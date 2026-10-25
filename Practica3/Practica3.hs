import Modulo (esParBit)

--CETES

data Plazo = Dias Int | Meses Int

-- Convierte el plazo a días.

diasPlazo :: Plazo -> Int
diasPlazo (Dias d) = d
diasPlazo (Meses 1) = 28
diasPlazo (Meses 6) = 182
diasPlazo (Meses 12) = 364

-- Devuelve la tasa anual correspondiente al plazo.

tasaPlazo :: Plazo -> Double

tasaPlazo (Dias 28) = 0.0609
tasaPlazo (Dias 182) = 0.0691
tasaPlazo (Dias 364) = 0.0744
tasaPlazo (Meses 1) = 0.0609
tasaPlazo (Meses 6) = 0.0691
tasaPlazo (Meses 12) = 0.0744

-- Calcula el monto final de la inversion segun el plazo.

cetes :: Double -> Plazo -> Double
cetes monto plazo =
    monto * (1 + tasaPlazo plazo * fromIntegral (diasPlazo plazo) / 360)

-- Genera un mensaje con el plazo, el rendimiento bruto y el monto final.

mensajeCetes :: Double -> Plazo -> String

mensajeCetes monto plazo =
    "Despues de " ++ show (diasPlazo plazo) ++
    " dias, obtuve " ++ show (cetes monto plazo - monto) ++
    " de rendimiento bruto sin asumir ningun riesgo crediticio. " ++
    "El monto total de mi inversion es de " ++ show (cetes monto plazo) ++ "."

-- Cuenta los numeros negativos de una lista.

negativos :: [Int] -> Int

negativos lista = length [x | x <- lista, x < 0]

-- Devuelve los numeros pares de una lista.

soloPares :: [Int] -> [Int]
soloPares lista = [x | x <- lista, esParBit x]

-- Determina si un numero es divisible entre otro.

esDivisible :: Int -> Int -> Bool
esDivisible n d = n `mod` d == 0

-- Determina si un numero es primo.

esPrimo :: Int -> Bool
esPrimo n = n > 1 && not (algunoDivide n 2)

-- Comprueba si algun numero desde d hasta n-1 divide a n.

algunoDivide :: Int -> Int -> Bool

algunoDivide n d
    | d >= n = False
    | esDivisible n d = True
    | otherwise = algunoDivide n (d + 1)

-- Devuelve los numeros primos de una lista.

primos :: [Int] -> [Int]
primos lista = [x | x <- lista, esPrimo x]
