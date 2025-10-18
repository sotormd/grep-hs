module Main (main) where

import System.Environment (getArgs)
import Data.List (isInfixOf)

main :: IO ()
main = do
  args <- getArgs

  case args of
    [pat] -> do
      contents <- getContents
      mapM_ putStrLn $ filter (pat `isInfixOf`) (lines contents)
    _ -> putStrLn "expected pattern"

