
--listeyi terse çevirme ..
ters_cevir :: [Int]->[Int]
ters_cevir [] =[]
ters_cevir xs = (last xs):(ters_cevir(init xs ))
