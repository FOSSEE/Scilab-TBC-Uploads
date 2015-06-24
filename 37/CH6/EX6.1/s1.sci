function[a1]=bubble(a,n)
  i=1;
  j=1;
  temp=0;
  for i=1:n-1
   for j=1:n-i
      if(a(j)>a(j+1))
        temp=a(j);
        a(j)=a(j+1);
        a(j+1)=temp;
      end
      j=j+1;
    end
    i=i+1;
  end
  a1=a;
  disp(a1,"Sorted array is:");
endfunction
//Calling Routine:
a=[23 21 232 121 2324 1222433 1212]
disp(a,"Given Array");
a1=bubble(a,7)