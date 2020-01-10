--paketleme [1,1,12,3,4,1] --> [(1,2),(12,1),(3,1),(4,1),(1,1)]

paketleme :: [Int]->[(Int,Int)]
paketleme xs
  |xs==[]=[]
  |tail xs ==[]=[(head xs,1)]
  |head xs == head (tail xs) = list_olustur xs (length xs): paketleme (drop (snd( list_olustur xs (length xs ) )) xs )
  |otherwise = list_olustur xs (length xs ) : paketleme (drop (snd( list_olustur xs (length xs ) )) xs )


list_olustur :: [Int]->Int ->(Int,Int)
list_olustur xs xuzunluk
  |tail xs==[] = ((head xs ),(xuzunluk-length xs)+1)
  |head xs == head(tail xs )= list_olustur (tail xs) xuzunluk
  |otherwise = ((head xs ),(xuzunluk-length xs)+1)
