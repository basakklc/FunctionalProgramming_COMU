aralikli :: Int->Int->Int

aralikli x y =  k
            where xs =filter( func x) [2..x]
                  ys= filter( func y) [2..y]
                  z=func2 xs ys
                  k=mymax z 0


func :: Int->Int->Bool
func sayi sayi2 = if ((sayi `mod` sayi2==0) ) then True else False

func2 :: [Int]->[Int]->[Int]
func2 xs ys
  |xs==[]=[]
  |(elem (head xs ) ys==True)=head xs :func2 (tail xs) ys
  |otherwise= func2 (tail xs) ys



mymax :: [Int]->Int->Int
mymax xs maxsayi
  |xs ==[]=maxsayi
  |head xs> maxsayi =mymax (tail xs) (head xs)
  |otherwise=mymax (tail xs) maxsayi
