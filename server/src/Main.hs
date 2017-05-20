module Main where

import API

import Data.Proxy (Proxy(..))
import System.Environment
import Servant.Utils.StaticFiles (serveDirectory)
import Servant.Server (serve)
import Network.Wai.Handler.Warp (run)

main = do
  (d:_) <- getArgs
  putStrLn "Serving on localhost:8080/static/, visit http://localhost:8080/static/index.html"
  run 8080 $
    serve api (serveDirectory d)

api :: Proxy API
api = Proxy
