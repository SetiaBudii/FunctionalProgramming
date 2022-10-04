{- Function untuk cek bilangan prima dengan 1 input dengan menggunakan bantuan function cekprime-}
cekPrime :: Integer -> Bool
cekPrime 1 = False
cekPrime 2 = True
cekPrime n = cekprime n n

{- Function untuk cek bilangan prima dengan 2 input secara rekursive sampai b < 2 -}
cekprime :: Integer-> Integer -> Bool
cekprime a b = if (b < 2 ) then True else 
                if (mod a b == 0 && a /= b) then False else cekprime a (b-1)