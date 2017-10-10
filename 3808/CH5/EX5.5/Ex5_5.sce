//Chapter 05: Induction and Recursion

clc;
clear;

//Function to merge & sort
function [ a1 ]= mergesort (a ,p , r )
if (p < r )
q = int (( p + r ) /2) ;
a = mergesort (a ,p , q ) ;
a = mergesort (a , q +1 , r ) ;
a = merge (a ,p ,q , r ) ;
else
a1 = a ;
return ;
end
a1 = a ;
endfunction

//Function to merge
function [ a1 ]= merge (a ,p ,q , r )
n1 =q - p +1;
n2 =r - q ;
left = zeros ( n1 +1) ;
right = zeros ( n2 +1) ;
for i =1: n1
left ( i ) = a ( p +i -1) ;
end
for i1 =1: n2
right ( i1 ) = a ( q + i1 ) ;
end
left ( n1 +1) =111111111;
right ( n2 +1) =111111111;
i =1;
j =1;
k=p;
for k = p : r
if ( left ( i ) <= right ( j ) )
a ( k ) = left ( i ) ;
i = i +1;
else
a ( k ) = right ( j ) ;
j = j +1;
end
end
a1 = a ;
endfunction

arr =[8 2 4 6 9 7 10 1 5 3]
disp(arr," Given Array:" ) ;
arr_s =mergesort (arr ,1 ,10)
disp(arr_s , " Sorted Array:" );
