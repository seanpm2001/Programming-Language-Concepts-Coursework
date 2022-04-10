import Tokens
import System.Environment
import Control.Exception
import System.IO


main :: IO ()
main = getTokens

getTokens :: IO ()
getTokens = do path <- getArgs
               contents <- readFile (path!!0)
               let var = alexScanTokens contents
               print var
         