--dupli [1,1,2,3] -->[[1,1,1,1],[2,2],[3,3]]

dupli :: [Int]->[[Int]]

dupli xs
  |length xs == 0 =[]]
  |tail xs == []= ( tekrar (head(hesap xs )) 2)  :[]
  |otherwise=( tekrar (head(hesap xs )) ((length (hesap xs ) ) * 2 )): dupli (drop (length (hesap xs) ) xs)



hesap:: [Int]->[Int]
hesap xs

  |length xs == 1 = head xs: []
  |head xs ==head (tail xs )= (head xs) : (hesap (tail xs ))
  |otherwise =head xs: []



tekrar :: Int->Int->[Int]
tekrar _ 0 = []
tekrar ch uzunluk =ch : (tekrar ch (uzunluk-1))
