datatype tree = Empty | Node of tree * int * tree;
datatype order = GREATER | EQUAL | LESS;

fun TreeCompare(Empty,Empty)=EQUAL
    |TreeCompare(Empty,(l2,n2,r2))=LESS
    |TreeCompare((l1,n1,r1),Empty)=GREATER
    |TreeCompare((l1,n1,r1),(l2,n2,r2))=Int.compare(n1,n2);

fun ins(y,Empty)=Node(Empty,y,Empty)
    |ins(y,Node(t1,x,t2))= 
        if (y<x)then Node(Node(t1,x,t2),y,Empty)
        else Node(ins(y,t1),x,t2);

fun SwapDown(Empty)=Empty
    |SwapDown(Node(Empty,x,Empty))=Node(Empty,x,Empty)
    |SwapDown(Node(l,x,Empty))=l
    |SwapDown(Node(Empty,x,r))=r
    |SwapDown(Node(l1,n1,r1),x,Node(l2,n2,r2))=
        if(n1>n2)
            then
                let val tmp_tree=(Node(l1,n1,r1),n2,SwapDown(l2,n2,r2))
                in ins(x,tmp_tree)
                end
        if(n1==n2)
            then
                let val tmp_tree=(Swapdown(l1,n1,r1),n1,SwapDown(l2,n2,r2))
                in ins(x,tmp_tree)
                end
        else 
            let val tmp_tree=(SwapDown(l1,n1,r1),n1,Node(l2,n2,r2))
            in ins(s,tmp_tree)
            end;


fun heapify (Empty)=Empty
    |heapify(Node(Empty,x,Empty))=Node(Empty,x,Empty)
    |heapify(Node(t1,x,t2))=SwapDown(Node(heapify(t1),x,heapify(t2)));




(* 
   Work of ReverseTree is W d 
   Span of ReverseTree is S d
*)

(* Work of SwapDown is W d
   Span of SwapDown is S d
   Work of heapify is W 2^d*d^2
   Span of heapify is S d^2 *)