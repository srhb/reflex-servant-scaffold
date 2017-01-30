{-# LANGUAGE OverloadedStrings #-}

module Main where

import           Reflex
import           Reflex.Dom

main :: IO ()
main = mainWidget $ el "h2" $ text "Hello Reflex!"
