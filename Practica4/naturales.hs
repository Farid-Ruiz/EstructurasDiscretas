module Natural where
,
import Auxiliar

-- 1. a_natural
a_natural :: Int -> Natural
a_natural 0 = Cero
a_natural n = S (a_natural (n - 1))

-- 2. a_entero
a_entero :: Natural -> Int
a_entero Cero = 0
a_entero (S n) = 1 + a_entero n

-- 3. potenciaNat
potenciaNat :: Natural -> Natural -> Natural
potenciaNat _ Cero = S Cero
potenciaNat n (S m) = multiNat n (potenciaNat n m)

-- 4. facNat
facNat :: Natural -> Natural
facNat Cero = S Cero
facNat (S n) = multiNat (S n) (facNat n)
