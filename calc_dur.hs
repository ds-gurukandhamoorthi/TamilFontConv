import System.Environment
import Data.List.Split(splitWhen)
main = do
    inpStrList <- getArgs
    --putStrLn (show (ceiling  (charge $ calcManyDurations inpStrList)))
    let result = (ceiling  . charge . calcManyDurations) inpStrList
     in print result

type Minutes = Int
type Rupees = Float
type Duration = String -- ex of Duration "10.25-10.50"
type Time = String -- ex of Time "10.25" or "10:25"

charge :: Minutes -> Rupees
charge durtn =  fromIntegral durtn *160.0/60.0

parseTime :: Time -> [Minutes]
parseTime time =  map (read::String->Int) ( splitWhen (`elem` ".:") time) 

calcOneDuration :: Duration -> Minutes
calcOneDuration dur = times!!1 - times !!0
                    where times = map (intoMinutes . parseTime) ( splitWhen (=='-') dur)
                          intoMinutes :: [Minutes] -> Minutes
                          intoMinutes [h,m] = h*60+m

calcManyDurations :: [Duration] -> Minutes
calcManyDurations durList = sum $ map calcOneDuration  durList
        
