module Main where

import qualified Data.ByteString.Lazy as LBS
import qualified Data.ByteString.Lazy.Char8 as LBS8

main :: IO ()
main = 
    do
        myLBS <- LBS.readFile "src/Main.hs"
        putStrLn $ "Read File"

        {- these lines will exception -}
        let lbsLength = LBS.length myLBS
        putStrLn $ "Length " ++ (show lbsLength)

        {- If instead of the above lines I try the following then
           the program prints this text as expected but exceptions follow -}
        -- LBS8.putStrLn myLBS
