--kaldir "acdsfr" 2-->"adsr"

kaldir :: [Char]->Int ->[Char ]

kaldir cs sayi
  |sayi>length cs =cs
  |otherwise= kaldir (mydrop sayi cs) (sayi+2)



mydrop :: Int->[Char]->[Char ]
mydrop sayi cs
  |sayi==1= tail cs
  |otherwise =(head cs):mydrop (sayi-1)(tail cs )
