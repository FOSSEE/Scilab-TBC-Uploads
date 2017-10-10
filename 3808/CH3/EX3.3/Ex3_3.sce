//Chapter 03: Algorithms

clc;
clear;

function []= binarysearch (arr ,n ,i)
last =1;
h=n;
while (last <= h )
mid = int (( last + h ) /2) ;
if ( arr ( mid ) == i )
printf ( "\nElement:%d found at position %d",i ,mid) ;
break ;
else
if ( arr ( mid ) >i )
h = mid -1;
else
last = mid +1;
end
end
end
endfunction

//Note:input array has to be sorted
ar =[1 2 3 5 6 7 8 10 12 13 15 16 18 19 20 22]
l=length(ar)
disp (ar , " Given array " ) ;
binarysearch (ar ,l ,19)        //Note:input format for function is (array,length,element to be searched)
