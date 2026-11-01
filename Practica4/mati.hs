module mati where
import Auxiliar

-- |mayorIgual: Compara dos matrioskas y devuelve True si la primera es mayor o igual


mayorIgual :: Matrioska -> Matrioska -> Bool
mayorIgual Mati Mati = True
mayorIgual (Cont _) Mati = True
mayorIgual Mati (Cont _) = False
mayorIgual (Cont m1) (Cont m2) = mayorIgual m1 m2

-- |aplana: Convierte una matrioska anidada en una lista plana

aplana :: Matrioska -> [Matrioska]
aplana Mati = [Mati]
aplana (Cont m) = Cont m : aplana m
