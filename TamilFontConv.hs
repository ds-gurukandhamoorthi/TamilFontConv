module TamilFontConv where
import TamilEntity (splitIntoLetters)
import Data.List(isInfixOf,concat)
import qualified Data.Map as M
unicToStmzhAtomsMap :: [(String,String)]
unicToStmzhAtomsMap = zipWith oneOnOne unicodeCharacters stmzhCharacters
                        where 
                            oneOnOne u s = ( u:[], s:[])
                            unicodeCharacters = uCons ++ uVow ++ uVadaMozhi
                            stmzhCharacters = sCons ++ sVow ++ sVadaMozhi
                            uCons="கஙசஞடணதநபமயரலவழளறன"
                            sCons="\61679\61684\61636\61521\61606\61680\61502\61669\61635\61532"
                                                             ++"\61506\61611\61673\61547\61559\61541\61637\61610"
                                                                -- writing the letters directly wouldn't function
                            uVow="அஆஇஈஉஊஎஏஐஒஓஔஃ"
                            sVow="\61622\61543\61654\61566\61539\61627\61608\61616\61550\61646\61563\61633\61664"
                            uVadaMozhi="ஷஜஸஹ"
                            sVadaMozhi="\61613\61659\61558\61639"
unicToStmzhAtomsTrueMap = M.fromList unicToStmzhAtomsMap

unicToStmzhCompoundsMap :: [(String,String)]
unicToStmzhCompoundsMap = zipWith3 twoOnOne unicodeCharacters markOfCharacters stmzhCharacters
                        where 
                            twoOnOne u m s = ( u:m:[], s:[])
                            unicodeCharacters = uMey ++ uKurilI ++ uNedilI ++ uKurilU ++ uNedilU
                            markOfCharacters  = mMey ++ mKurilI ++ mNedilI ++ mKurilU ++ mNedilU
                            stmzhCharacters   = sMey ++ sKurilI ++ sNedilI ++ sKurilU ++ sNedilU

                            uMey="கஙசஞடணதநபமயரலவழளறனஷஜஸஹ"
                            mMey=take (length uMey) $ repeat '\3021'  -- ்
                            sMey="\61634\61626\61663\61662\61666\61685\61661\61645\61609\61508\61510\61676\61535\61643\61621\61534\61557\61531\61545\61675\61692\61667"

                            uKurilI="கசடணதநபமயரலவழளறனஷஜஸஹ"  -- ஙி ஞி absent
                            mKurilI=take (length uKurilI) $ repeat '\3007'  -- ி
                            sKurilI="\61694\61509\61629\61672\61533\61527\61624\61556\61548\61686\61551\61555\61537\61625\61604\61517\61620\61687\61516\61518"
                            uNedilI="கசடணதநபமயரலவழளறனஷஜஸஹ"  -- ஙீ ஞீ absent
                            mNedilI=take (length uNedilI) $ repeat '\3008'  -- ீ
                            sNedilI="\61695\61670\61647\61607\61561\61632\61612\61482\61528\61530\61660\61524\61649\61507\61523\61644\61525\61693\61602\61674"
                            uKurilU="கசடணதநபமயரலவழளறனஷஜஸஹ"  -- ஙு ஞு absent
                            mKurilU=take (length uKurilU) $ repeat '\3009'  -- ி
                            sKurilU="\61562\61623\61564\61538\61549\61519\61505\61560\61605\61682\61515\61601\61631\61651\61614\61648\61655\61544\61553\61688"
                            uNedilU="கசடணதநபமயரலவழளறனஷஜஸஹ"  -- ஙூ ஞூ absent
                            mNedilU=take (length uNedilU) $ repeat '\3010'  -- ி
                            sNedilU="\61677\61683\61689\61513\61475\61617\61615\61514\61522\61652\61657\61638\61681\61546\61511\61691\61603\61641\61536\61658"


unicToStmzhCompound :: String -> String
unicToStmzhCompound ("ஸ்ரீ") = "\61552"

unicToStmzhCompound ("க்ஷ்") = "\61653"
unicToStmzhCompound ("க்ஷா") = "\61619\61526"
unicToStmzhCompound ("க்ஷி") = "\61512"
unicToStmzhCompound ("க்ஷீ") = "\61640"
unicToStmzhCompound ("க்ஷு") = "\61529"
unicToStmzhCompound ("க்ஷூ") = "\61542"
unicToStmzhCompound ("க்ஷெ") ="\61619" 
unicToStmzhCompound ("க்ஷே") = "\61628\61619"
unicToStmzhCompound ("க்ஷொ") = "\61656\61619\61526"
unicToStmzhCompound ("க்ஷோ") ="\61628\61619\61526"
unicToStmzhCompound ("க்ஷை") = "\61619"
unicToStmzhCompound ("க்ஷௌ") = "\61656\61619\61541"
unicToStmzhCompound ("க்ஷ") = "\61619"
unicToStmzhCompound (c:[]) | isAtom (c:[]) = lookUpStr (c:[]) unicToStmzhAtomsMap
unicToStmzhCompound s@(c:'\3021':[]) =  lookUpStr  s unicToStmzhCompoundsMap -- க்
unicToStmzhCompound s@(c:'\3007':[]) =  lookUpStr  s unicToStmzhCompoundsMap -- கி
unicToStmzhCompound s@(c:'\3008':[]) =  lookUpStr  s unicToStmzhCompoundsMap -- கீ
unicToStmzhCompound s@(c:'\3009':[]) =  lookUpStr  s unicToStmzhCompoundsMap -- கு
unicToStmzhCompound s@(c:'\3010':[]) =  lookUpStr  s unicToStmzhCompoundsMap -- கூ
unicToStmzhCompound (c:'\3020':[])   | isAtom (c:[]) = "\61656"++ (lookUpStr (c:[]) unicToStmzhAtomsMap) ++ "\61541" -- கௌ
unicToStmzhCompound (c:'\3018':[])   | isAtom (c:[]) = "\61656"++ (lookUpStr (c:[]) unicToStmzhAtomsMap) ++ "\61526" -- கொ.. 
unicToStmzhCompound (c:'\3019':[])   | isAtom (c:[]) = "\61628"++ (lookUpStr (c:[]) unicToStmzhAtomsMap) ++ "\61526" -- கோ
unicToStmzhCompound (c:'\3014':[])   | isAtom (c:[]) = "\61656"++ (lookUpStr (c:[]) unicToStmzhAtomsMap)             -- கெ
unicToStmzhCompound (c:'\3015':[])   | isAtom (c:[]) = "\61628"++ (lookUpStr (c:[]) unicToStmzhAtomsMap)             -- கே
unicToStmzhCompound (c:'\3016':[])   | isAtom (c:[]) = "\61671"++ (lookUpStr (c:[]) unicToStmzhAtomsMap)             -- கை
unicToStmzhCompound (c:'\3006':[]) | isAtom (c:[]) =            (lookUpStr (c:[]) unicToStmzhAtomsMap) ++ "\61526" -- கா


unicToStmzhCompound c = c

unicodeToStmzh :: String -> String
unicodeToStmzh  = concat .  map unicToStmzhCompound . splitIntoLetters 


isAtom :: String -> Bool
isAtom c = c `isInfixOf` unicodeAtoms
           where
                unicodeAtoms = uCons ++ uVow ++ uVadaMozhi
                uCons="கஙசஞடணதநபமயரலவழளறன"
                uVow="அஆஇஈஉஊஎஏஐஒஓஔஃ"
                uVadaMozhi="ஷஜஸஹ"

 
--lookUp "க" unicToStmzhAtomsMap
lookUpStr ::String -> [(String,String)] -> String
lookUpStr key fromMap = case lookup key fromMap of
                            Just value -> value
                            Nothing    -> key   --we return the key itself


--toStmzh ::String -> String
--toStmzh str = splitIntoLetters str
