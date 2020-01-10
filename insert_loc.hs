--   insert 'a' "bbc" 2 --> "babc"

insert :: Char -> [Char] -> Int -> [Char]
insert ch cs 1   =  ch : cs
insert ch cs sayi= head cs  : insert ch (tail cs ) (sayi-1)
