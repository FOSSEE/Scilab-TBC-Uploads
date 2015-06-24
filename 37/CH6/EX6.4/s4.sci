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
a=[23 21 232 121 2324 1222433 1212]
disp(a,"Given Array");
a1=insertion(a,7) 