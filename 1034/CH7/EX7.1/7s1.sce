clear;
clc;
disp("Example 7.1");
funcprot(0);
function[a1]=insertion(a,n)
  for k=1:n
    y=a(k);
    i=k;
    while(i>=1)
      if(y<a(i))
        a(i+1)=a(i);
        a(i)=y;
      end
      i=i-1;
    end
  end
  a1=a;
  disp(a1,"Sorted array is:");
endfunction
//Calling Routine:
a=[5 4 3 2 1]       // worst-case behaviour of insertion sort.
disp(a,"Given Array");
a1=insertion(a,5) 