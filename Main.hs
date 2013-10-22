module Main where

import Graphics.Gloss

main :: IO ()
main = display (InWindow "Gloss Starter" (500, 500) (100, 100)) white haskellLogo

haskellLogo :: Picture
haskellLogo = Scale 10 10 $ Translate (-20.525) (-15) $ Pictures
  [ greaterThanSymbol
  , Translate 10   0 lambda
  , Translate 31.5 0 equalsSymbol
  ]

lambda :: Picture
lambda = Line
  [ ( 0   ,  0    )
  , (10   , 15    )
  , ( 0   , 30    )
  , ( 7.5 , 30    )
  , (27.5 ,  0    )
  , (20   ,  0    )
  , (13.75,  9.375)
  , ( 7.5 ,  0    )
  , ( 0   ,  0    )
  ]

greaterThanSymbol :: Picture
greaterThanSymbol = Line
  [ ( 0  ,   0)
  , (10  ,  15)
  , ( 0  ,  30)
  , ( 7.5,  30)
  , (17.5,  15)
  , ( 7.5,   0)
  , ( 0  ,   0)
  ]

equalsSymbol :: Picture
equalsSymbol = Translate 0 9.375 $ Pictures
  [ Translate (-2.25) 6.75 $ Line [(0, 0), (-3, 4.5), (12  , 4.5), (12  , 0), (0, 0)]
  , Translate   2.25  0    $ Line [(0, 0), (-3, 4.5), ( 7.5, 4.5), ( 7.5, 0), (0, 0)]
  ]
