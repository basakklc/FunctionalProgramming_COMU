--oteleme "abcdef" 2 --> "cdefab"

oteleme :: [Char] -> Int -> [Char]

oteleme cs sayi
  |sayi>0 = (drop sayi cs )++ ((take sayi cs ))
  |sayi<0 =(drop ((length cs) + sayi) cs )++ (take ((length cs) + sayi) cs )
