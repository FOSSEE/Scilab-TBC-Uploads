//Chapter 05: Induction and Recursion

clc;
clear;

function pow = power(i,n)
if n == 0 
  pow = 1
else
  pow = i * power(i,n-1)//recursive function call
end
return pow
endfunction

n=input("Enter the number whose power is to be found:")
po=input("Enter the power:")
p=power(n,po)
mprintf("%d to the power %d is %d",n,po,p)
