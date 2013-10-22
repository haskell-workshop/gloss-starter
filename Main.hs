module Main where

import Graphics.Gloss

main :: IO ()
main = display (InWindow "Gloss Starter" (500, 500) (100, 100)) white picture

picture :: Picture
picture = Circle 80
