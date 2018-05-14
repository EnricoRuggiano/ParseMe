module ParseMe 
( textMe,
  wordMe,
  nameMe
) where
import Data.List
import Data.Char

-- Version ONE-Line of textMe program
textMe:: String -> [(Int, Char)]
textMe = reverse . sort . map  lambda' . group . sort
    where lambda' = \x -> (length x, head x)
  
-- WordMe One-Line
wordMe:: String -> [(Int, String)]
wordMe = reverse . sort . map lambda' . group . sort . words
	where lambda' = \x -> (length x, head x)

-- NameMe
nameMe:: String -> [(Int, String)]
nameMe = reverse . sort . map lambda' .  group . sort . filter upper' . words
    where lambda' = \x -> (length x, head x)
          upper'  = isUpper . head
