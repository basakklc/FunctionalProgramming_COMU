--paketleme [1,2,2,3,3,5]--> [[1],[2,2],[3,3],[5]]

paketleme :: [Int]->[[Int]]
paketleme xs
  |tail xs ==[]=[[head xs]]
  |head xs == head (tail xs) = list_olustur xs : paketleme (myDrop( length( list_olustur xs )) xs )
  |otherwise = list_olustur xs : paketleme (drop (length( list_olustur xs )) xs )


list_olustur :: [Int] ->[Int]
list_olustur xs

  |head xs == head(tail xs )= head xs : list_olustur (tail xs)
  |otherwise =head xs : []



myDrop :: Int->[Int]->[Int]
myDrop  0 xs  = xs
myDrop  x xs = myDrop  (x-1) (tail xs)
