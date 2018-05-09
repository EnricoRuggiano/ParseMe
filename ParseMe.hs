module ParseMe 
( textMe,
  wordMe
) where

import Data.List

-- Version ONE-Line of textMe program
textMe:: String -> [(Int, Char)]
textMe = reverse . sort . map  lambda' . group . sort
    where lambda' = \x -> (length x, head x)
  
-- WordMe One-Line
wordMe:: String -> [(Int, String)]
wordMe =  reverse . sort . map lambda' . group . sort . words
	where lambda' = \x -> (length x, head x)
