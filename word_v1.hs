-- WordMe One-Line
import Data.List

wordMe:: String -> [(Int, String)]
wordMe =  reverse . sort . map lambda' . group . sort . words
	where lambda' = \x -> (length x, head x)
