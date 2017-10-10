//Chapter 05: Induction and Recursion

clc;
clear;

function fact = my_factorial(n)
if n == 0 
  fact = 1
else
  fact = n * my_factorial(n-1)//recursive function call
end
return fact
endfunction

num=input("Enter the number whose factorial is to be found:")
f=my_factorial(num)
mprintf("The factorial of %d is %d",num,f)
