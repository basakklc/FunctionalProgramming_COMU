--removeAt 2 "abcd"--> ["b","acd"]

removeAt :: Int -> [ Char ]->[[Char]]
removeAt sayi xs=  (last (take sayi xs):[]):( (mydrop sayi xs) :[])


mydrop :: Int->[Char]->[Char]
mydrop 1 xs=tail xs
mydrop sayi xs= head xs : mydrop (sayi-1) (tail xs)
