import Data.List

names = [("Ian", "Curtis"),
        ("Bernard","Sumner"),
        ("Peter", "Hook"),
        ("Stephen","Morris")]

compareLNames n1 n2 =
        if lname1 > lname2
        then GT
        else LT
    where lname1 = snd n1
          lname2 = snd n2

flipArgs f arg1 arg2 = f arg2 arg1


div2 = (/) 2
flipDiv2 = flip (/) 2


subseq start end xs =
    take (end - start) $ drop start xs 

takeMy :: Int -> [p2] -> [p2]
takeMy _ [] = []
takeMy some (x:xs) = if some > 0 
                        then x: takeMy (some-1) xs
                        else []

myMap :: (a -> a) -> [a] -> [a]
myMap _ [] = []
myMap f (x:xs) = f x:map f xs

fg :: (a -> Bool) -> [a] -> [a]
fg _ [] = []
fg f (x:xs) = 
    if f x
    then x
    else fg f xs []



     