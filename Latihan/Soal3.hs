checkEvenOddPosNeg :: Integer -> String
checkEvenOddPosNeg (x) 
    | (mod x 2) == 0 && x<0 = "Genap Negatif"
    | (mod x 2) == 0 && x>0 = "Genap Positif"
    | (mod x 2) == 1 && x<0 = "Ganjil Negatif"
    | otherwise = "Ganjil Positif"