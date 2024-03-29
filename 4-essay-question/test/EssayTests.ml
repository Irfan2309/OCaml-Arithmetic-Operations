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
open Essay
open OUnit2

(* unit tests *)

let add_test1 _test_ctxt =
  assert_equal 9 (add 5 4) 

let mul_int_test1 _test_ctxt =
  assert_equal 9 (mul_int 3 3) 

let count_test1 _test_ctxt =
  assert_equal 4 (count [1, 2, 3, 4]) 

let seq_add_test1 _test_ctxt =
  assert_equal [7; 5; 6] (seq_add [2; 3; 5] [5; 2; 1])

let length_test1 _test_ctxt =
  assert_equal 4 (length [1, 2, 3, 4]) 
  
(* list of unit tests *)
let unit_tests =
  [ "add_test1" >::add_test1
  ]

(* property based tests *)

let add_zero =
  QCheck.Test.make ~name:"seqmult_zeros" ~count:1000
    QCheck.(make Gen.nat)
    (fun x ->
      add x 0 = x
      && add 0 x = x)

(* list of all property tests *)
let property_tests =
  List.map QCheck_ounit.to_ounit2_test
    [ add_zero
    ]

(* run the unit and property based tests *)
let () =
  run_test_tt_main
    ("sequence_arithmetic_tests" >:::
       (List.append unit_tests property_tests))
