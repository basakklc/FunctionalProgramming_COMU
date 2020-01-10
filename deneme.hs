import Data.Char
import Data.List

dene :: [Char]->[Int]
dene xs = [digitToInt y| y <- xs ,isDigit y ==True]
