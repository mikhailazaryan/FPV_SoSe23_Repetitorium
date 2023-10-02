6. Show that the statement

   ```ocaml
   fold_left (+) 0 l   =   fold_right (+) l 0
   ```

   holds for all Lists l.



let rec fold_left f acc l =
  match l with [] -> acc | h :: t -> fold_left f (f acc h) t

let rec fold_right f l acc =
  match l with [] -> acc | h :: t -> f h (fold_right f t acc)


  

Generalized statement (*) (if necessary): fold_left (+) acc l   =   fold_right (+) l acc
---
fold_left (+) acc l   =   fold_right (+) l acc
Base Case: 
Statement being proven in base case: fold_left (+) acc []   =   fold_right (+) [] acc
Proof of base case:
fold_left (+) acc [] =
(fold_left)          =  match [] with [] -> acc | h :: t -> fold_left (+) ((+) acc h) t
(match)              = acc

(match)               = acc
(fold_right)          = match [] with [] -> acc | h :: t -> (+) h (fold_right (+) t acc)
                      = fold_right (+) [] acc 




<...>
---
Inductive Step: 
Induction hypothesis (or hypotheses):  fold_left (+) acc l   =   fold_right (+) l acc
Statement being proved in inductive step: fold_left (+) acc x::l   =   fold_right (+) x::l acc
Proof of inductive step:
fold_left (+) acc x::l = 
(fold_left)            =  match x::l with [] -> acc | h :: t -> fold_left (+) ((+) acc h) t
(match)                = fold_left (+) ((+) acc x) l
(+)                    = fold_left (+) (acc+x) l
(I.H)                  = fold_right (+) l (acc+x)


(+)                   = x + (fold_right (+) l acc) 
(match)               = (+) x (fold_right (+) l acc) 
(fold_right)          = match x::l with [] -> acc | h :: t -> (+) h (fold_right (+) t acc)
                      = fold_right (+) x::l acc 


---
Instantiation of generalization (if necessary):

fold_left (+) 0 l 
(*)    = fold_right (+) l 0
       = fold_right (+) l 0  

---

(fold_right)           =  match l with [] -> acc | h :: t -> (+) h (fold_right (+) t acc)
(match)                = 


Base Case: l = []
Statement being proven in base case: fold_right (+) [] (acc+x)  =  x + (fold_right (+) [] acc)
Proof of base case:
fold_right (+) l (acc+x) = 
(fold_right)             = match [] with [] -> acc + x | h :: t -> (+) h (fold_right (+) t (acc + x))
(match)                  = acc + x

(arith)                  = acc + x
(match)                  = x + acc
(fold_right)             = x + ( match [] with [] -> acc | h :: t -> (+) h (fold_right (+) t acc))
                         = x + (fold_right (+) [] acc)

Inductive Step: l = b::l
Induction hypothesis (or hypotheses):  fold_right (+) l (acc+x)  =  x + (fold_right (+) l acc)
Statement being proved in inductive step: fold_right (+) b::l (acc+x)  =  x + (fold_right (+) b::l acc)
Proof of inductive step:
fold_right (+) x::l (acc+x)    = 
(fold_right)                   =  match x::l with [] -> acc + x | h :: t -> (+) h (fold_right (+) t (acc +x))
(match)                        = (+) x (fold_right (+) l (acc + x))
(+)                            = x + (fold_right (+) l (acc + x))
(I.H)                          = x + x + (fold_right (+) l acc)

(+)                            = x + x + (fold_right (+) l (acc)
(match)                        = x + (+) x (fold_right (+) l (acc)
(fold_right)                   = match x::l with [] -> acc + x | h :: t -> (+) h (fold_right (+) t (acc))
                               = x + (fold_right (+) l acc)





