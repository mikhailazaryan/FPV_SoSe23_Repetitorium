nodes t = count t

```ocaml
type tree = Node of tree * tree | Empty

let rec nodes t = match t with Empty -> 0
    | Node (l,r) -> 1 + (nodes l) + (nodes r)

let rec count t =
  let rec aux t a = match t with Empty -> a
      | Node (l,r) -> aux r (aux l (a+1))
  in
  aux t 0
  ```


Generalized statement (*) (if necessary): <...>
---
Base Case: t = Empty
Statement being proven in base case: nodes Empty = count Empty
Proof of base case:
                nodes Empty
(nodes)         = match Empty with Empty -> 0 | Node (l,r) -> 1 + (nodes l) + (nodes r)
(match)         = 0 

(aux)           = match Empty with Empty -> a | Node (l,r) -> aux r (aux l (a+1))
(count)         = let rec aux t a = match t with Empty -> a | Node (l,r) -> aux r (aux l (a+1)) in aux Empty 0
                count Empty
---
Inductive Step:
Induction hypothesis (or hypotheses): nodes Node (a,b) = count Node (a,b) 
Statement being proved in inductive step: nodes t = count t
Proof of inductive step:
<...>
---
Instantiation of generalization (if necessary):
<...>
---