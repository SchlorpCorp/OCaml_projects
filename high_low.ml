print_string "Player 1, enter your number: "

let num = read_int ()

let rec high_low n m =
  let _ = print_string "Player 2, enter your guess: " in
  let i = read_int () in
    if i = n then print_endline ("Spot on; total number of guesses was: " ^ (string_of_int m))
    else
      let () =  
        if i < n then print_endline ("Too low; total number of guesses so far is: " ^ (string_of_int m))
        else print_endline ("Too high; total number of guesses so far is: " ^ (string_of_int m))
      in high_low n (m + 1)

let _ = high_low num 1
