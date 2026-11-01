module Entero where
import Auxiliar

-- | multiEnt: Multiplica dos números Enteros preservando las reglas de signos.
-- Se apoya en isomorfismo con Int (definido en Auxiliar.hs) para mayor robustez.
-- ghci> multiEnt (Neg (Succ (Succ Zero))) (Succ Zero)
-- Neg (Succ (Succ Zero))
multiEnt :: Entero -> Entero -> Entero
multiEnt a b = fromInt (toInt a * toInt b)
