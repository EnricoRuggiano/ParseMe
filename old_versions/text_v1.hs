-- Version ONE-Line of textMe program
import Data.List

textMe:: String -> [(Int, Char)]
textMe = reverse . sort . map  lambda' . group . sort
    where lambda' = \x -> (length x, head x)
