(* (fun helper1([]:(string*int)list)=nil
    | helper1((p,q)::L)=p::helper1(L);


fun helper2([]:(string*int)list)=nil
    | helper2((P,Q)::M)= Q::helper2(M);

fun unzip([]:(string*int)list)=(nil,nil)
    | unzip n=(helper1(n),helper2(n));) *)
    
(* fun unzip([]) = ([],[])
    | unzip((s,x)::L) =
        let
            val (SL,IL) = unzip(L)
        in
            (s::SL,x::IL)
        end; *)

fun unzip([]:(string*int)list)=(nil,nil)
    | unzip((s,x)::L) =
        let
            val (tmp_s,tmp_l) = unzip(L)
        in
            (s::tmp_s,x::tmp_l)
        end;