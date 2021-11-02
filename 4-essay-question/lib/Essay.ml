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

(* Write an essay on the OCaml type system. Be clear, to-the-point, and
   concise. Convince your marker that you understand:

   - Function type signatures.
   - Polymorphism.
   - List types and tuple types (and their differences).
   - OCaml pattern-matching on values (e.g. integers) and structures (e.g. lists).
   - Named and anonymous functions.
   - Recursive functions.
   - Unit and property based tests.

   Include short code-fragments (as in the lectures) to illustrate
   your observations.
   Do this in a literate programming style to include executable code
   to demonstrate the concepts you're writing about, e.g. *)

(* The following function adds two numbers together. It has types ... *)

let add (x:int) (y:int) : int = x + y

(* The following function... *)
