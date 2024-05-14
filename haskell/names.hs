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

