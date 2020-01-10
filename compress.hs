--compress "aabbx" -->"abx"

compress :: [Char]->[Char]

compress xs
  |tail xs==[]=[head(xs)]
  |(head(tail xs)==head xs ) = compress (tail xs )
  |otherwise= head xs : compress (tail xs)
