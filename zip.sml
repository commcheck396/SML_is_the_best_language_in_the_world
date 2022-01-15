fun zip(x::L , []:int list):((string * int)list)=nil 
    |  zip([]:string list , y::P)=nil
    |  zip([]:string list , []:int list)=nil
    |  zip(z::M , q::N)=(z,q)::zip(M , N);



