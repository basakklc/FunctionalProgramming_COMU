-- istenen indisten ayırır. ayir "aabbc" 3 -> "aab","bc"

ayir :: [Char]->Int->[[Char]]
ayir cs sayi=(( fonk sayi cs ) :[] )++((fonk2 sayi cs):[])


fonk :: Int->[Char]->[Char]
fonk 0 cs= []
fonk sayi cs =head cs : fonk (sayi-1) (tail cs )


fonk2 :: Int->[Char]->[Char]
fonk2 0 cs=cs
fonk2 sayi cs =fonk2 (sayi-1) (tail cs)
