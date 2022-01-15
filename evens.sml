fun evens([])=[]
    |evens(x::L)=
        if(x mod 2 = 0) then [x]@evens(L)
        else evens(L);


(* test *)
(* evens([1,1,4,3,1,2,1,1]) *)