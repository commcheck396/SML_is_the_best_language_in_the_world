datatype tree = Empty | Node of tree * int * tree;

fun ReverseTree(Empty)=Empty
    |ReverseTree(Node(l,x,r))=
        Node(ReverseTree(l),x,ReverseTree(r));

