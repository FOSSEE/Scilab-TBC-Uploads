//Chapter 03: Algorithms

clc;
clear;

//Linear Search is also known as Sequential Search
function []= linearsearch (a ,n , ie )
i =1;
j =0;
for i =1: n
if ( arr(i) == ie )
printf ( "\nElement:%d found at position %d\n " ,ie , i ) ;
j =1;
end
end
if ( j ==0)
disp ( "Element Not Found!") ;
end
endfunction

arr =[1 2 3 5 6 7 8 10 12 13 15 16 18 19 20 22]
l=length(arr)
disp (arr , " Given array:" ) ;
linearsearch (arr ,l ,19)        //Note:input format for function is (array,length,element to be searched)
