--1.Reconversion

reconversion x = x / 1000
reconversion :: Double -> Double

--2.Cashback

cashback :: Double -> Double
cashback x = x * 0.10

--3.CashbackMonto

cashbackMonto :: Double -> Double -> Double
cashbackMonto puntos valor = puntos * valor

--4.minutosHoras

minutosHoras :: Int -> (Int, Int)
minutosHoras minutos = (minutos `div` 60, minutos `mod` 60)

--5.Estafa

esEstafa :: Double -> Double -> Double -> Double -> Bool
esEstafa precio pInicial pFinal cambio = (pInicial - precio) > cambio && pFinal == precio  

--6.Secuencia descendiente

esDescendiente :: Double -> Double -> Double -> Double -> Bool
esDescendiente a b c d = a > b && b > c && c > d

--7.IMC

imc :: Double -> Double -> String
imc peso altura =
    if peso / ((altura/100) * (altura/100))<18.5
        then "Es peso bajo"
    else if peso / ((altura/100) * (altura/100))<25
        then "Peso normal"
    else if peso / ((altura/100) * (altura/100))<30
        then "Sobrepeso"
    else
        "Es obesidad...lo siento bro...(ya se que esta de mas Irvin no me crucifiques)"

--8.Lahipotenusa

hipotenusa :: Double -> Double -> Double
hipotenusa base h = sqrt (base * base + h *h)

--9.Pendiente (llamen a Dios :X)

pendiente :: (Double, Double) -> (Double, Double) -> Double
pendiente (x1,y1) (x2,y2) = (y2 - y1)  / (x2 - x1)