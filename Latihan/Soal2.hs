gcde :: (Integer,Integer) -> Integer
gcde(x,y)
    | (x == y) =   y
    | (x > y ) = gcde((x-y),y)
    | otherwise = gcde((y-x),x)