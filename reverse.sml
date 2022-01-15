fun reverse([]:int list)=[];
    |reverse(x::L)=reverse(L)@[x];



fun helper(x,tmp:int list)=[x]@tmp
    (* |helper(x,[])=[x]; *)
    
fun reverse2([],tmp:int list)=tmp
    |reverse2(x::L,tmp:int list)=reverse2(L,[x]@tmp)

