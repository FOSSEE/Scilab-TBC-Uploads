//Chapter 05: Induction and Recursion

clc;
clear;

function f = my_f(n)
if n == 0 
  f = 3
else
  f = 2* my_f(n-1) +3 //making a recursive call
end
return f
endfunction

for n=0:4
re=my_f(n)
mprintf("The value of f(%d) is %d\n",n,re)
end
