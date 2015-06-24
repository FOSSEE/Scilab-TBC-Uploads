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
a=[23 21 232 121 2324 1222433 1212]
disp(a,"Given Array");
a1=quick(a)