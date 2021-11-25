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

(* implement the function *)
(* Add the 2 values x and y *)
let curry : (('a * 'b) -> 'c) -> 'a -> 'b -> 'c =
  fun f x y -> f (x, y) ;;

(* implement the function *)
(* Return the function with the 1st and 2nd element of f *)
let uncurry : ('a -> 'b -> 'c) -> ('a * 'b) -> 'c =
  fun f p -> f (fst p) (snd p);;
