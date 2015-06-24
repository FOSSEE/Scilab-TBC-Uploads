clear;
clc;
disp("Example 7.3");
funcprot(0);
function[a1]=quick(a);
  a=gsort(a);//IN BUILT QUICK SORT FUNCTION
  n=length(a);
  a1=[];
  for i=1:n
    a1=[a1(:,:) a(n+1-i)];
  end
  disp(a1,"Sorted array is:");
endfunction
//Calling Routine:
a=[26 5 37 1 61 11 59 15 48 19]
disp(a,"Given Array");
a1=quick(a)