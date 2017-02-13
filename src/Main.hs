module Main where

import Protolude
import Servant
import Servant.HTML.Lucid

import Network.Wai.Handler.Warp

type HackerpostAPI = "api" :> QueryParam "id" :> Get '[JSON] Delivery
                  :<|> QueryParam "page" :> Get '[HTML] Delivery

server :: Server HackerpostAPI
server = api :<|> pageServer
  where api = return "";
        

main :: IO ()
main = putStrLn ""
