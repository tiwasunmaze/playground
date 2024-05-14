messyMain :: IO()
messyMain = do
    print "mailto?"
    recipient <- getLine
    print "subject?"
    title <- getLine
    print "author?"
    author <- getLine
    print (composeMail recipient title author)

toPart recipient = "hey," ++ recipient ++ ",\n"

bodyPart title = "thanks for" ++
        title ++ "\n"

fromPart author = "Thanks,\n" ++ author

composeMail recipient title author = toPart recipient ++
    bodyPart title ++
    fromPart author

ssq :: (Num a, Ord a) => a -> a -> a
ssq x y = let   sumsq = ((x+y)^2)
                sqsum = (x^2 + y^2)
        in
            max sumsq sqsum

ifEven func x = 
    if even x
    then func x 
    else x