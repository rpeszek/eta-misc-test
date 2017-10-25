{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE TypeOperators #-}


module Main where

import           Data.Aeson
import           GHC.Generics
import           Network.Wai
import           Network.Wai.Servlet.Handler.Jetty
import           Servant
import           System.IO

data Foobar = Foo | Bar
  deriving (Eq, Show, Generic)

instance ToJSON Foobar

type Api =
  "foobar" :> Capture "fooId" Integer :> Get '[JSON] Foobar

api :: Proxy Api
api = Proxy

server :: Server Api
server =
  getFoobar

getFoobar :: Integer -> Handler Foobar
getFoobar = \ case
  0 -> return Foo
  _ -> return Bar

main :: IO ()
main = 
    run 9000 $ serve api $ server
