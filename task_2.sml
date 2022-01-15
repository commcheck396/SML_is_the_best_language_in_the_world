(* fun toInt (base : int) (digits : int list) : int = 
    case digits of 
        [] => 0   
        | [d] => d
        | x::y::L => x+toInt(base)(y::L);
toInt(2)([0011]) *)

fun toInt (base : int) (digits : int list) : int = 
    case digits of 
        [] => 0   
        | x::L => (x+toInt(base)(L)*base);

toInt(2)([0,0,1,1])

fun toBase(base)(x):int list=
    if(x=0) then []
    else let val remainder=x mod base
         in [remainder]@toBase(base)(x div base)
         end;

toBase(5)(42)

(* fun remainder_cal(x,base)=
    if(x<base) then x
    else remainder_cal(x-base); *)

fun convert(base1,base2)([])=[]
    |convert(base1,base2)(x::L)=
        let val tmp=toInt(base1)(x::L)
        in toBase(base2)(tmp)
        end;

convert(10,5)([4,2])