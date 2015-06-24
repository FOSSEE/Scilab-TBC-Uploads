function[a1]=selection(a,n)
  i=n;
  while(i>=1)
    large=a(1);
    indx=1;
    for j=1:i
      if(a(j)>large)
        large=a(j);
        indx=j;
      end
    end
    a(indx)=a(i);
    a(i)=large;
    i=i-1;
  end
  a1=a;
  disp(a1,"Sorted array is:");
endfunction
//Calling Routine:
a=[23 21 232 121 2324 1222433 1212]
disp(a,"Given Array");
a1=selection(a,7)