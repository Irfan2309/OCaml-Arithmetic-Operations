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

(* type declaration for intseq *)
type int_seq = int list

(* implementations *)

(* pointwise addition:

   seq_add [x1; ...; xn] [y1; ...; yn] = [x1 + y1; ...; xn + yn]
 *)
 (*iniitially tests if one of the lists is empty, if it is returns an empty list.
   then we add the top of both lists and recursively call the remaining lists
  *)
 let rec seq_add : int_seq -> int_seq -> int_seq =
  fun xs ys -> match xs, ys with 
  | _, [] -> []
  | [], _ -> []
  | x1 :: y1, x2 :: y2 -> (x1 + x2) :: (seq_add y1 y2);;


(* pointwise multiplication:

   seq_mult [x1; ...; xn] [y1; ...; yn] = [x1 * y1; ...; xn * yn]
 *)
 (*iniitially tests if one of the lists is empty, if it is returns an empty list.
   then we multiply the top of both lists and recursively call the remaining lists
  *)
 let rec seq_mult : int_seq -> int_seq -> int_seq =
  fun xs ys -> match xs, ys with 
  | _, [] -> [] 
  | [], _ -> [] 
  | x1 :: y1, x2 :: y2 -> (x1 * x2) :: (seq_mult y1 y2);;

