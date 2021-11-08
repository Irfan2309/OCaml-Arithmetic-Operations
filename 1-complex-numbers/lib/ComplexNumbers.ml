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

(* complex numbers as pairs of integers *)
type complex_number = int * int

(* implementations *)

(* addition of two complex integers *)

(*For complex number addition we simply add the real parts and the complex parts of the number*)
let complex_add (x1, y1) (x2, y2) = (x1 + x2, y1 + y2);;

(* multiplication of two complex integers *)

(*in complex numbers, for 2 numbers a + bj and c + dj; the multiplication takes place as follows *)
(* product = (ac - bd) + (ad + bc)j *)
let complex_mult (x1, y1) (x2, y2) = (((x1 * x2) - (y1 * y2)), ((x1 * y2) + (y1 * x2)));;