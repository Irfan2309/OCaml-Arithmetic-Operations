(* Coursework template

   Irfanuddin Syed, H00389591       <--- confirm who you are 
   F28PL Coursework 2, OCaml        <--- confirm what you're submitting

   You may assume variables and functions defined in earlier questions
   in your answers to later questions, though you should add comments
   in code explaining this if any clarification might help read your
   code.

   To do this coursework, FORK, THEN CLONE the gitlab project.

   If you do it the other way around, then you'll have cloned *my*
   project (which you can't `git push` to), rather than cloned *your
   fork* of the project (which you can `git push` to).

   Any questions, don't guess: ask.

   This coursework is live exam material so KEEP YOUR ANSWERS PRIVATE. *)

(* type aliases for integer sequences and integer matrices *)
type int_seq = int list
type int_matrix = int_seq list

(* useful for debugging *)
let string_of_row row =
  String.concat ""
    (List.map (fun x -> string_of_int x ^ " ") row)

(* useful for debugging *)
let rec string_of_matrix m =
  match m with
      | []            -> ""
      | [[]]          -> ""
      | (row :: rest) ->
         string_of_row row ^ "\n" ^
         string_of_matrix rest

(* test whether a list of lists of integers represents a matrix.  The
   length of each row should be equal.*)

(* Need to write a helper function to calculate length of rows *)

let rec length: 'a list -> int = 
  fun xs -> match xs with
  | [] -> 0
  | (x :: rest) -> 1 + (length rest);;

(* wrote rxcpetion caes for empty list and matrices 
  checks if the top 2 rows are equal,if not returns false, else recursively checks the other rows *)
let rec is_matrix x = match x with
  | ([]) -> true
  | ([[]]) -> true
  | ([_]) -> true
  | x :: x1 :: x2 -> if (length x != length x1)
    then false
    else is_matrix (x1 :: x2);;

(* function matrixshape takes the matrix, and calculates the number of
   columns and rows *)
(*wrote exception cases for empty matrix and matrix with empty row
    then returns length of rows and columns using helper function *)

let matrix_shape x = match x with
  | [] -> (0, 0)
  | [[]] -> (0, 1)
  | x :: rest -> length x, length rest + 1 ;;

(* matrix addition *)
(* helper function to sequentially add the rows of the matrix *)
let rec row_add : int_seq -> int_seq -> int_seq =
  fun xs ys -> 
  match xs, ys with 
  | [], _ -> []
  | _, [] -> []
  | a :: rest, b :: rest1 -> (a + b) :: (row_add rest rest1)

(* initially tests for empty matrices
  then adds the top of the matrices using row_add and recursively calls the rest of itself *)

let rec matrix_add x y = match x, y with
  | [], [] -> []
  | [[]], [[]] -> [[]]
  | x :: x1, y :: y1 -> (row_add x y) :: (matrix_add x1 y1);;


(* matrix multiplication *)
let matrix_mult x y =
  failwith "not implemented yet"
