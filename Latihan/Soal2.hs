gcde :: (Integer,Integer) -> Integer
gcde(x,y)
    | (x == y) =   y            -- jika x sama dengan y
    | (x > y ) = gcde((x-y),y)  -- jika x > y
    | otherwise = gcde((y-x),x) -- jika x < y