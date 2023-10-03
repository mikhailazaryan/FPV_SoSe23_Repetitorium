9. Consider the following function:

   ```ocaml
   let comp f g x = f (g x)
   ```

   Show that the statement

    ```ocaml
    map (cmp f g) l   =   comp (map f) (map g) l
    ```

    holds for all Lists l as well as all functions g and f

```ocaml
let rec map f l =
  match l with [] -> [] | h :: t -> f h :: map f t
  ```

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
QED