-- asal bölenleri hesaplar asal 75--> 5,3 

dizi::Int->[Int]
dizi xs=x
      where y =filter( func xs) [2..xs]
            x=liste (reverse y) y

func :: Int->Int->Bool
func sayi sayi2 = if (sayi `mod` sayi2==0) then True else False

func3 :: [Int]->Int->[Int]
func3 xs sayi
  |xs==[]=[]
  |((sayi `mod ` (head xs )  ==0) && (sayi>(head xs)))=  1 : (func3 (tail xs ) sayi)
  |otherwise = 0:func3 (tail xs ) sayi


liste :: [Int]->[Int]->[Int]
liste[] _ = []
liste xs ys = if ((all (==0) (func3 ys (head xs)))==True) then  ((head xs) : liste (tail xs) ys) else ( liste (drop 1 xs) ys )
