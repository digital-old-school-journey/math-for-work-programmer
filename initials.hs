initials :: (String, String) -> String
initials name = [first] ++ "." ++ [last] 
    where first = head (fst name)
          last  = head (snd name)