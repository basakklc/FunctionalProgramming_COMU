-- aralik "aabbc" 1 4  1.ve 4. indisler arasındakiler

aralik :: [Char ]->Int->Int->[Char ]

aralik xs 1 1= [head xs]
aralik xs 1 sayi2= head xs : aralik (tail xs) 1 (sayi2-1)
aralik xs sayi1 sayi2 =  aralik (tail xs) (sayi1-1) (sayi2-1)
