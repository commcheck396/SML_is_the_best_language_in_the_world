fun inter([],[])=nil
    | inter(x::L,[])=x::L
    | inter([],y::K)=y::K
    | inter(x::L,y::K)=[x,y]@inter(L,K);

fun test