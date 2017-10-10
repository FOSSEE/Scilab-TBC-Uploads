//Chapter 03: Algorithms

clc;
clear;

function [ res ]= bubblesort (a , n )
i =1;
j =1;
temp =0;
for i =1: n -1
for j =1: n - i
if ( a ( j ) >a ( j +1) )
temp = a ( j ) ;
a ( j ) = a ( j +1) ;
a ( j +1) = temp ;
end
j = j +1;
end
i = i +1;
end
res = a ;
disp ( res ,"Sorted Array :") ;
endfunction
 
 a =[3 2 4 1 5]
 disp (a , " Given Array " ) 
a1 = bubblesort (a ,5)
