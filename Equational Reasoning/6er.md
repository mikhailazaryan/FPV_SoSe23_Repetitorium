6. Show that the statement

   ```ocaml
   fold_left (+) 0 l   =   fold_right (+) l 0
   ```

   holds for all Lists l.



let rec fold_left f acc l =
  match l with [] -> acc | h :: t -> fold_left f (f acc h) t

let rec fold_right f l acc =
  match l with [] -> acc | h :: t -> f h (fold_right f t acc)


  

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