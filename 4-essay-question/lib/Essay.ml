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

(*  
The Ocaml language is a statically typed functional language that can infer the types of variables or functions on the go but it is a good practice to explicitly declare them in the constraint section. 

Function type signatures:

The Function type signatures constraints the function's arguments and return types. This is a good feature as it helps programmers to easily identify the behaviour and the properties of a function just from the type signatures. 
 A signature is determined automatically by the compiler based on how the function handles arguments.
 Example Code Snippet: 
*)
let mul_int : int -> int -> int =
   fun x y -> x * y ;;

(* Polymorphism

Polymorphism allows the programmers to generalise the arguments and return types. The advantage is to reuse the function for many different scenarios that match the same signature type pattern, without writing more code. The polymorphic type is defined using one single quotation mark before a charecter. 
    The biggest advantage of this is when defining high order functions that apply the same functionality to different cases. 
    
    Parmetric Polypmorphism: A type that allows a function to be designed generically so that it can handle values in the same way regardless 
    of type.

    Ad-hoc polymorphism : it refers to the ability to define a function with the same name but with different types. They are different functions that can 
    act in different ways. 

    The high order count is an example of an high order function that count the number of elements on a list. 
    This function is polymorphic since it can handle any kind of list, either integer or string list 
   Code Snippet: 
 *)
let rec count: 'a list -> int = 
   fun xs -> match xs with
      [] -> 0
         | (x::rest) -> 1 + (count rest) ;;


(* List types and tuple types:

Lists:
    lists are polymorphic sequences. Although lists are polymorphic, once the first element is inserted, all elements must be of the same type. A list can either be empty, or contain a head and a tail.
    Lists are defined using square brackets [] and elements are separated by semicolons.
    List indexing starts at 0 and are of a fixed size.
    Example: ["hello"; "world"]  :- 2 string type elements
             [] :- empty list

Tuples:
    Tuples are also polymorphic data types that are a collection of elements that do not necessarily have to be of same type. Its purpose is to aggregate data values into one variable.
    Tuples are defined using parenthesis () and elements are separated by commas.
    Example: ("Irfan", 18, 178.5) :- tuple consisting of different element types
 *)

 (* OCaml pattern-matching on values (e.g. integers) and structures (e.g. lists).

   Pattern matching is a feature that checks  the argument or against values, conditions or deconstructors.
   Pattern matching is used to perform computations according to the pattern of the expression. 
   We can pattern match numbers and strings with "match" keyword, and it behaves like a case or switch statement 

   Code Snippet:
  *)
  type int_seq = int list
  let rec seq_add : int_seq -> int_seq -> int_seq =
   fun xs ys -> match xs, ys with 
   | _, [] -> []
   | [], _ -> []
   | x1 :: y1, x2 :: y2 -> (x1 + x2) :: (seq_add y1 y2);;

(* Named and anonymous functions:

   Named functions are just functions that have a name. When a function is named it is stored in a variable and it can be called and applied anywhere in the program.
   Example: let fun seq_add : int_seq -> int_seq -> int_seq =

   Anonymous functions are functions that don't have a name so that they cannot be assigned to any value. 
   These anonymous functions are used to pass as arguments to another function. 
   An anonymous function is defined as a lambda expression, using the “fun” keyword to bind the variables from outside the function.
   Example: fun xs ->
 *)

 (* Recursive functions:

 Recursion is the concept of calling a function from within itself. A recursive function requires two properties: A base case and a set of conditions bringing it to the base case.
 Recursiveness is essential for functional programming since it is not possible to perform loops or most control flow tecniques, since functional programming is part of the declarative paradigm of programming. 
 Recursion is an crucial tecnique, for functional and declarative programming languages, as it performs repetitive tasks specified by computational expressions until a certain base case stops the repetition its own repetition, avoiding a potential infinite loop. 
 In Ocaml programming language, recursion is mostly applied in lists and it is the fundamental tecnique to manipulate them. 

 Code Snippet
 *)
 let rec length: 'a list -> int =  (* code to find length of row in a matrix *)
   fun xs -> match xs with
   | [] -> 0 (* base case *)
   | (x :: rest) -> 1 + (length rest);; (* recursively calls the function on itself *)


(* Unit and property based tests:

   Unit Testing: 
   A unit test is a small test  for the function to test its functionality. This type of testing is used to compute minimal functionalities of a 
   function.

   Property-based testing:
   Property testing has an incomparable more extensive range than unit testing since the values being tested are randomly assigned by a library as well as the amount of test cases. Additionally to the variable automation, the property based testing library uses bound values to reduce the time to report major programming bugs or logical innacuracies. 
   Property based testing is only possible in functionally programming, due to the strict use of immutable variables and lambda computation.

 *)
 