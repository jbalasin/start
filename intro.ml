(* this is how you make comments in ocaml *)

let x = 10;; (* use "let" to declare variables and functions *)

let printHello () = (* this takes in no arguments so we put in the '()' to signify this*)
  print_endline "Hello"
;; (*Notice that statements end in a double semi colon *)

(* this is a function with arguments, x and y *)
let add x y =
  x + y (*this function returns x + y, we didnt have to explicity say "return" like java or python*)
;;

(* functional programming revolves around functions, every function returns something *)
(* if a function doesnt return an actual value, it returns "unit" which is essentially nothing
 * see function printHello
 * *)

(* let make functions a little more compilcate *)
(* factorial function below *)
let rec factorial x =
  if x == 1 then 1
  else factorial (x-1) * x
;;

(* heres another way to writer this using pattern matching *)
let rec facctorialWithPatternMatching x =
  match x with
  | 1 -> 1
  | _ -> facctorialWithPatternMatching (x-1) * x
;;
