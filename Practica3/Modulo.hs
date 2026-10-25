module Modulo (esParBit) where

-- Determina si un entero es par usando el residuo de la division.

esParBit :: Int -> Bool
esParBit n = n `mod` 2 == 0
