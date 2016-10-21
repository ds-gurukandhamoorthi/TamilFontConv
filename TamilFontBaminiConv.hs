module TamilFontBaminiConv where
import TamilEntity (splitIntoLetters)
import Data.List(isInfixOf,concat)
import qualified Data.HashMap.Lazy as M

genAssocList f srcList g toList = zipWith (\u s -> (u,s)) srcList' toList'
                                        where srcList' = map f srcList
                                              toList' = map g toList

charToStr c=[c] -- c:[]
applyMark m c = [c,m] --c:m:[]

vowAssoc,meyAssoc,kurilIAssoc,nedilIAssoc,kurilUAssoc,nedilUAssoc,specialAssoc :: [(String,String)]
vowAssoc = genAssocList charToStr "அஆஇஈஉஊஎஏஐஒஓஃ" charToStr "mM,<cCvVIxX/"

meyAssoc = genAssocList (applyMark '\3021') "கஙசஞடணதநபமயலவழளறனஷஜஸஹ" (applyMark ';') "fqrQlzjegkaytoswd\\[]`"

kurilIAssoc = genAssocList (applyMark '\3007') "கஙசஞணதநபமயரலவழளறனஷஜஸஹ" (applyMark 'p') "fqrQzjegkauytoswd\\[]`"

nedilIAssoc = genAssocList (applyMark '\3008') "கஙசஞணதநபமயரலவழளறனஷஜஸஹ" (applyMark 'P') "fqrQzjegkauytoswd\\[]`"

kurilUAssoc = genAssocList (applyMark '\3009') "கசடணதநபமயரலவழளறன"          charToStr "FRLZJEGKAUYTOSWD"

nedilUAssoc = genAssocList  (applyMark '\3010') "கசடமரழ"                         charToStr  "$#^%&*"

nedilUAssoc' = genAssocList  (applyMark '\3010') "பயவங"                      (applyMark '+') "gatq"

nedilUAssoc'' = genAssocList  (applyMark '\3010') "ஷஜஸஹ"                      (applyMark '_') "\\[]`"



specialAssoc = [(",",">"),("ர்","H"),("ஜு","[{"),("ழூ","*"),("தூ","J}"),("நூ","E}"),("றூ","W}"),("லூ","Y}"),("ணூ","Z}"),("னூ","D}"),("ஸு","]{"),("ஷு","\\{"),("ஹு","`{"), ("டீ","B"),("டி","b"),("ஔ","xs"),("ஸ்ரீ", "="), ("க்ஷ்","f;\\;"), ("க்ஷா","f;\\h"), ("க்ஷி","f;\\p"), ("க்ஷீ","f;\\P"), ("க்ஷு","f;\\{"),("க்ஷூ","f;\\_"),("க்ஷெ","f;n\\"),("க்ஷே","f;N\\"),("க்ஷொ","f;n\\h"),("க்ஷோ","f;N\\h"),("க்ஷை","f;i\\"),("க்ஷ","f;\\") ] 




       
everythingElseAssoc :: [[(String,String)]]
everythingElseAssoc =   zipWith allMarksApply ( map charToStr "கஙசஞடணதநபமயரலவழளறனஷஜஸஹ")  ( map charToStr "fqrQlzjegkauytoswd\\[]`")
                                    

-- example (allMarksApply "க்ஷ" "\61619")
allMarksApply :: String -> String -> [(String, String)]
allMarksApply seedChar intoChar = zipWith (\x y -> (x, y)) transformedSeed transformedIntoChar
                                        where
                                             transformedSeed = map ($ seedChar) [id, (++"ா"), (++"ெ"),(++"ே"),(++"ை"),(++"ொ"),(++"ோ"),(++"ௌ")]
                                             transformedIntoChar = map ($ intoChar) [id, addANedilMark,addEKurilMark,addENedilMark,addAIMark,addOKurilMark,addONedilMark,addAUMark]

addANedilMark = (++"h") --ா
addEKurilMark = ('n':) --ெ
addENedilMark = ('N':) --ே
addAIMark = ('i':) -- ை
addOKurilMark =  addEKurilMark . addANedilMark -- ொ
addONedilMark =  addENedilMark . addANedilMark -- ோ
addAUMark =  addEKurilMark . (++"s") --ௌ


unicToBaminiMap = M.unions  $ map M.fromList $ everythingElseAssoc ++[ vowAssoc, meyAssoc,kurilIAssoc,nedilIAssoc,kurilUAssoc,  nedilUAssoc,nedilUAssoc',nedilUAssoc'', specialAssoc]

unicToBaminiCompound :: String -> String
unicToBaminiCompound s = M.lookupDefault s  s  unicToBaminiMap

unicodeToBamini :: String -> String
unicodeToBamini  = concatMap unicToBaminiCompound . splitIntoLetters 


