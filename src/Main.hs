{-# LANGUAGE OverloadedStrings #-}
module Main where

import qualified Network.Mime as M

main :: IO ()
main = do print $ M.mimeByExt M.defaultMimeMap "application/text" "test.js"
  
