type tree = Node of tree * tree | Empty

let rec nodes t = match t with Empty -> 0
    | Node (l,r) -> 1 + (nodes l) + (nodes r)

let rec count t =
  let rec aux t a = match t with Empty -> a
      | Node (l,r) -> aux r (aux l (a+1))
  in
  aux t 0

  let rec aux2 t 0 = match t with Empty -> 0 | Node (l,r) -> aux2 r (aux2 l 1)
  
