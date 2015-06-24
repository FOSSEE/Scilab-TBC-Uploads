clear;
clc;
disp("Example 7.2");
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
a=[2 3 4 5 1]
disp(a,"Given Array");
a1=insertion(a,5) 