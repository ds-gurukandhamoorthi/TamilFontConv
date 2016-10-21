module TamilEntity (splitIntoEntities, lengthEntities, splitIntoLetters) where
import Data.Char

splitIntoEntities ::String -> [String]
splitIntoEntities ""          = []
splitIntoEntities (c:[])    |  isSpace c|| isPunctuation c || isDigit c = []
splitIntoEntities (c:xs)    |  isSpace c|| isPunctuation c || isDigit c = splitIntoEntities xs
splitIntoEntities (c:[])      = [c:[]]
--splitIntoEntities (c:c':xs) |  isLetter c' || isSpace c' || isPunctuation c' || isDigit c' = (c:[]) : splitIntoEntities (c':xs)
splitIntoEntities (c:c':xs) |  (not . isMark) c' = (c:[]) : splitIntoEntities (c':xs)
splitIntoEntities (c:c':xs) |  c' == 'ா' = (c:[]) :(c':[]) : splitIntoEntities xs
splitIntoEntities (c:c':xs) |  c' `elem` ['ை','ே','ெ'] = (c':[]) :(c:[]) : splitIntoEntities xs
splitIntoEntities (c:c':xs) |  c' == 'ொ' = "ெ": (c:[]) : "ா" : splitIntoEntities xs --it doesn't show but it's ok
splitIntoEntities (c:c':xs) |  c' == 'ோ' = "ே": (c:[]) : "ா" : splitIntoEntities xs
splitIntoEntities (c:c':xs) |  c' == 'ௌ' = "ெ": (c:[]) : "ள" : splitIntoEntities xs
splitIntoEntities (c:c':xs) |  isMark c' = (c:c':[]) : splitIntoEntities xs

lengthEntities :: String -> Int
lengthEntities "" = 0
lengthEntities (c:[]) = 1
lengthEntities (_:c':xs) |  isLetter c' =  1 + lengthEntities (c':xs)
lengthEntities (_:c':xs) |  c' `elem` ['ா','ை','ே','ெ'] =  2 + lengthEntities xs
lengthEntities (_:c':xs) |  c' `elem` ['ொ','ோ','ௌ'] =  3 + lengthEntities xs
lengthEntities (_:c':xs) |  isMark c' = 1 + lengthEntities xs

--Tamil Font Conversion depneds on this. 
splitIntoLetters ::String -> [String] --tamil letters
splitIntoLetters ""       = []
splitIntoLetters (c:[])   = [c:[]]
splitIntoLetters (c:c':xs) | isLetter c' = (c:[]) : splitIntoLetters (c':xs)
splitIntoLetters (c:c':xs) | isMark c' = (c:c':[]) : splitIntoLetters xs
