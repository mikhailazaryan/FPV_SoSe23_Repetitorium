7. Consider the following functions

   ```ocaml
   let rec fac n = if n < 1 the 1 else n * fac (n-1)

   let rec facc_help f n =
     if n <= 0 then f 1
     else facc_help (fun p -> f (n*p)) (n-1)

   let facc n = 
     facc_help (fun x -> x) n
   ```

   Show that the statement

   ```ocaml
   facc n   =   fac n
   ```

   for all non negative n.
   Hint: You didnt learn a rule for *if-then-else*, but you can invent one yourself. If you want you can also
   rewrite it to a match expression and use the known rule for that.



Generalized statement (*) (if necessary): <...>
---
Base Case:
Statement being proven in base case: <...>
Proof of base case:
<...>
---
Inductive Step:
Induction hypothesis (or hypotheses): <...>
Statement being proved in inductive step: <...>
Proof of inductive step:
<...>
---
Instantiation of generalization (if necessary):
<...>
---