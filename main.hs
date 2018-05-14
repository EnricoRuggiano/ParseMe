import ParseMe

main = do
    contents <- getContents
    print $ wordMe contents
