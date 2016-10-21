module TamilFontStmzhConv where
import TamilEntity (splitIntoLetters)
import Data.List(isInfixOf,concat)
import qualified Data.HashMap.Lazy as M

genAssocList f srcList g toList = zipWith (\u s -> (u,s)) srcList' toList'
                                        where srcList' = map f srcList
                                              toList' = map g toList

charToStr c=[c] -- c:[]
applyMark m c = [c,m] -- c: m: []

vowAssoc,meyAssoc,kurilIAssoc,nedilIAssoc,kurilUAssoc,nedilUAssoc,specialAssoc :: [(String,String)]
vowAssoc = genAssocList charToStr "அஆஇஈஉஊஎஏஐஒஓஔஃ" charToStr "\61622\61543\61654\61566\61539\61627\61608\61616\61550\61646\61563\61633\61664"

meyAssoc = genAssocList (applyMark '\3021') "கஙசஞடணதநபமயரலவழளறனஷஜஸஹ" charToStr "\61634\61626\61663\61662\61666\61685\61661\61645\61609\61508\61510\61676\61535\61643\61621\61534\61557\61531\61545\61675\61692\61667"

kurilIAssoc = genAssocList (applyMark '\3007') "கசடணதநபமயரலவழளறனஷஜஸஹ" charToStr "\61694\61509\61629\61672\61533\61527\61624\61556\61548\61686\61551\61555\61537\61625\61604\61517\61620\61687\61516\61518"

nedilIAssoc = genAssocList (applyMark '\3008') "கசடணதநபமயரலவழளறனஷஜஸஹ"
                      charToStr "\61695\61670\61647\61607\61561\61632\61612\61482\61528\61530\61660\61524\61649\61507\61523\61644\61525\61693\61602\61674"

kurilUAssoc = genAssocList (applyMark '\3009') "கசடணதநபமயரலவழளறனஷஜஸஹ" 
                            charToStr "\61562\61623\61564\61538\61549\61519\61505\61560\61605\61682\61515\61601\61631\61651\61614\61648\61655\61544\61553\61688"

nedilUAssoc = genAssocList  (applyMark '\3010') "கசடணதநபமயரலவழளறனஷஜஸஹ"  
                            charToStr "\61677\61683\61689\61513\61475\61617\61615\61514\61522\61652\61657\61638\61681\61546\61511\61691\61603\61641\61536\61658"

specialAssoc = [("ஸ்ரீ", "\61552"), ("க்ஷ்","\61653"),  ("க்ஷி","\61512"), ("க்ஷீ","\61640"), ("க்ஷு","\61529"),("க்ஷூ","\61542")]

                      
everythingElseAssoc :: [[(String,String)]]
everythingElseAssoc =  zipWith allMarksApply ("க்ஷ": map charToStr "கஙசஞடணதநபமயரலவழளறனஷஜஸஹ")  ("\61619" : map charToStr "\61679\61684\61636\61521\61606\61680\61502\61669\61635\61532\61506\61611\61673\61547\61559\61541\61637\61610\61613\61659\61558\61639")
                                    

-- example (allMarksApply "க்ஷ" "\61619")
allMarksApply :: String -> String -> [(String, String)]
allMarksApply seedChar intoChar = zipWith (\x y -> (x, y)) transformedSeed transformedIntoChar
                                        where
                                             transformedSeed = map ($ seedChar) [id, (++"ா"), (++"ெ"),(++"ே"),(++"ை"),(++"ொ"),(++"ோ"),(++"ௌ")]
                                             transformedIntoChar = map ($ intoChar) [id, addANedilMark,addEKurilMark,addENedilMark,addAIMark,addOKurilMark,addONedilMark,addAUMark]


prepend c = (c :) -- slight optimization when prepending we prepend char...instead of string
append s = (++ s)
addANedilMark = append "\61526" --ா
addEKurilMark = prepend '\61656' --ெ
addENedilMark = prepend '\61628' --ே
addAIMark =  prepend '\61671'  -- ை
addOKurilMark =  addEKurilMark . addANedilMark -- ொ
addONedilMark =  addENedilMark . addANedilMark -- ோ
addAUMark =  addEKurilMark . append "\61541" --ௌ

unicToStmzhMap = M.unions  $ map M.fromList $ everythingElseAssoc ++ [ vowAssoc, meyAssoc,kurilIAssoc,nedilIAssoc,kurilUAssoc,  nedilUAssoc, specialAssoc] 
--unicToStmzhMap = undefined 

unicToStmzhCompound :: String -> String
unicToStmzhCompound s = M.lookupDefault s  s  unicToStmzhMap

unicodeToStmzh :: String -> String
unicodeToStmzh  = concatMap unicToStmzhCompound . splitIntoLetters 
