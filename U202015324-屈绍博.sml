(* Encoding format is GB 2313, please open this file using GB 2313 format *)
(* 结课作业 *)

(* task_1 *)

fun nrev [ ] = [ ]
| nrev (x::L) = nrev(L) @ [x]

fun revAppend ([ ], acc) = acc
| revAppend(x::L, acc) = revAppend(L, x::acc)

(*
    nrev函数是先遍历到列表的尾端，达到递归出口，之后依次将元素按照反转后的顺序连接在一个列表中
    执行时间Work为O(n),因为仅仅对列表进行了一次遍历和一次连接操作
    revAppend加入了一个列表参数来储存一部分列表的翻转结果，可以达到边遍历边连接的功能，遍历列表到结尾后即可得到答案
    执行时间Work为O(n),因为在对列表的遍历期间便完成了翻转列表的连接
*)



(* task_2 *)

fun itfib(1,x,y)=x+y
    |itfib(n,x,y)=itfib(n-1,y,x+y);

(* test *)
(* itfib(5,0,1) *)
(* answer is 8, correct.*)



(* task_3 *)

datatype tree = Empty | Node of tree * int * tree;

fun map (n,L)=
    case L of
        [] => []
        | x::R => ([n]@x) :: (map (n,R));

fun paths(Empty)=[[]]
    |paths(Node(l,x,r))=
        [[]]@map(0,paths(l))@map(1,paths(r));

(* test *)
(* paths((Node(Node(Empty, 42, Empty), 21, Empty))) *)
(* answer is [[],[0],[0,0],[0,1],[1]], correct *)






(* 实验四 *)

(* task_1 *)
(* 功能为查找长度为4的字符串 *)


(* task_2 *)

fun thenAddOne (f,x)= f x +1;


(* task_3 *)

fun mapList (f,[])=[]
    |mapList (f,x::L)=  f(x):: mapList(f,L);


(* task_4 *)

fun mapList' f = fn L =>
    case L of [] => []
    | x::R => (f x):: mapList' f R;


(* task_5 *)

fun foldr F z[]=z
    |foldr F z(x::L)=F(x,foldr F z L);

fun exists(p:'a->bool)(l:'a list):bool=foldr(fn(a,b)=>p a orelse b) false l;

fun forall(p:'a->bool)(l:'a list):bool=foldr(fn(a,b)=>p a andalso b) true l;


(* task_6 *)

fun treeFilter f Empty=Empty
    |treeFilter f (Node(left,x,right))=
            if (f x) then 
                Node(treeFilter f left,SOME x,treeFilter f right)
            else
                Node(treeFilter f left,NONE,treeFilter f right);

