module Auxiliar where

-- Definiciones de tipos de datos

data Natural = Cero | S Natural deriving (Eq, Show)
data Entero = Zero | Succ Entero | Neg Entero deriving (Eq, Show)
data Matrioska = Mati | Cont Matrioska deriving (Eq, Show)

-- Funciones auxiliares para Naturales

sumaNat :: Natural -> Natural -> Natural
sumaNat n Cero = n
sumaNat n (S m) = S (sumaNat n m)

multiNat :: Natural -> Natural -> Natural
multiNat _ Cero = Cero
multiNat n (S m) = sumaNat n (multiNat n m)

-- Funciones auxiliares para Enteros (conversión para simplificar operaciones de signos)

toInt :: Entero -> Int
toInt Zero = 0
toInt (Succ n) = 1 + toInt n
toInt (Neg n) = - (toInt n) 

fromInt :: Int -> Entero
fromInt 0 = Zero
fromInt n
    | n > 0     = Succ (fromInt (n - 1))
        | otherwise = Neg (fromInt (abs n))
