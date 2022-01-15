datatype tree = Empty | Node of tree * int * tree;
datatype order = GREATER | EQUAL | LESS;

fun BinarySearch(Empty,x)=false
    |BinarySearch(Node(l,n,r),x)=
        case Int.compare(n,x) of
             GREATER => BinarySearch(l,x)
            |EQUAl => true
            |LESS => BinarySearch(r,x);
            

