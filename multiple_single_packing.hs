-- "aaabbd " --> Multiple 'a' 3 , Multiple 'b' 2 , Single 'd' 1

data Packing = Multiple Char Int | Single Char Int deriving (Show, Eq)



hesap :: [Char] -> [Packing]

hesap xs
  |length xs == 0=[]
  |length xs == 1=Single (head xs ) 1:[]
  |snd (packing xs (length xs))== 1 = (Single (head xs) (1) ): hesap (drop (snd (packing xs (length xs))) xs)
  |otherwise = Multiple (head xs) (snd (packing xs (length xs))) : hesap (drop (snd (packing xs (length xs))) xs)

packing :: [Char]->Int->(Char,Int)
packing xs xuzunluk
  |tail xs == [] = (head xs , xuzunluk)
  |head xs == head(tail xs) = packing  (drop 1 xs ) xuzunluk
  |otherwise =(head xs , xuzunluk-length (drop 1 xs) )
