datatype tree = Empty | Node of tree * int * tree;

fun Split([])=([],0,[])
    |fun Split([x])=([],x,[])
    |fun Split(x::L)=
        let val(a,n,b)=Split(L)
        in
            if(length(a)>length(b))
                then (a,x,[y]@b)
            else
                (y::a,x,b)
        end;

fun Split([])=([],0,[])
    |Split([x])=([],x,[])
    |Split([x,y])=([x],y,[])
    |Split(x::y::L)=
        let
            var(l,n,r)=Split(L)
        in
            ([x]@l,n,[y]@r)
        end;

fun ListToTree([])=Empty
    |ListToTree(x::L)=
        let
            val(l,n,r)=Split(L)
        in
            node(ListToTree(l),n,ListToTree(r))
        end;