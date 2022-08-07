main = do 
    putStrLn "New Number" 
    new :: Int
    new <- getLine
    putStrLn "Old Number"
    old :: Int
    old <- getLine

    increase :: Int
    increase = new - old

    perInce = increase / old
    putStrLn (perInce ++ "?")
    
