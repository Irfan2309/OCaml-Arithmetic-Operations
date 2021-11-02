(* Coursework template

   My Name here, My UserID          <--- confirm who you are 
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
let rec seq_add : int_seq -> int_seq -> int_seq =
  fun xs ys ->
  failwith "not implemented yet"

(* pointwise multiplication:

   seq_mult [x1; ...; xn] [y1; ...; yn] = [x1 * y1; ...; xn * yn]
 *)
let rec seq_mult : int_seq -> int_seq -> int_seq =
  fun xs ys ->
  failwith "not implemented yet"
