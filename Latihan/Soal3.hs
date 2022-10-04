checkEvenOddPosNeg :: Integer -> String
checkEvenOddPosNeg (x) 
    | (mod x 2) == 0 && x<0 = "Genap Negatif"  -- jika bilangannya genap dan negatif
    | (mod x 2) == 0 && x>0 = "Genap Positif"  -- jika bilangannya genap dan positif
    | (mod x 2) == 1 && x<0 = "Ganjil Negatif" -- jika bilangannya ganjil dan negatif
    | otherwise = "Ganjil Positif"             -- jika bilangannya ganjil dan positif