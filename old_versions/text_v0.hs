-- Version "By Hand" of textMe program
-- Sort
quicksort' :: (Ord a) => [a] -> [a]
quicksort'[] = []
quicksort' (x:xs) = 
    quicksort' [a | a <- xs, a <= x] ++[x]++ 
    quicksort' [b | b <- xs, b > x]

-- One List of One Char
split':: (Eq a)=> [a] -> [a]
split' [] = []
split' [x] = [x]
split' (x:xs)
    | x /= (head xs) = [x]
    | otherwise = x: (split' xs)

-- Get a List of splitted list
splitAll':: (Eq a, Ord a) => [a] -> [[a]]
splitAll' [] = [[]]
splitAll' (x:xs) = [(split' (x:xs))] ++ (splitAll' other)
	where other = [a| a<-xs, a>x]

-- Count the occurencies of the char
count' :: [[Char]] -> [(Int, Char)]
count' [[]]  = [(0, '*')]
count' [[x]] = [(length [x], x)] 
count' (x:xs) = [(length x, head x)]++ (count' xs)

-- Rank 
rank' :: (Ord a) =>[a] -> [a]
rank' x = reverse (quicksort' x)

-- Get the Top x Char
top :: Int -> [a] -> [a]
top x y = take x y

-- Get the Worst x Char
worst :: Int -> [a] -> [a]
worst x y = take x (reverse y)

-- main function
textMe :: String -> [(Int, Char)]
textMe x = rank' $ init $ count' $ splitAll' $ quicksort' x 
				 
