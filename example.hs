-- Example of ParseMe; It counts the words of 
-- the Divina Commedia Inferno Canto I by Dante Alighieri

import ParseMe
import System.IO

main = do 
	divina <- readFile "DivinaCommediaCanto1_noEscape.txt"
	putStrLn . show . wordMe $ divina
