fun pre([])=nil
    |pre(x::y::L)=[x]@pre((x+y)::L)
    |pre(z::K)=[z];




fun helper(x,[])=nil
    |helper(x,s::L)=
        let 
            a=x+s;
        in
            a::helper(x,L)
        end;

fun fastpre([])=nil
    |fastpre(x::L)=
        let helper(x,L)
        in x::fastpre(L)
        end;
