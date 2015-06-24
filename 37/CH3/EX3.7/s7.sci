
function[]=simu_fact(n);
  a=1;
  while(n>0)
    a=a*n;
    n=n-1;
  end
  disp(a,"Factorial is ");
endfunction
//Calling Routine:
a=9
simu_fact(a)
