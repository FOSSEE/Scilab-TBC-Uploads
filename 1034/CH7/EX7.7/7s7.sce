clear;
clc;
disp("Example 7.7");
function[a1]=shell(a,n,incr,nic)
  for i=1:nic
    span=incr(i);
    for j=span+1:n
      y=a(j);
      k=j-span;
      while(k>=1&y<a(k))
          a(k+span)=a(k);
        k=k-span;
      end
      a(k+span)=y;
    end
  end
  a1=a;
  disp(a1,"Sorted array is:");
endfunction
//Calling Routine:
a=[23 21 232 121 2324 1222433 1212]
disp(a,"Given Array");
incr=[5 3 1]//must always end with 1
a1=shell(a,7,incr,3)