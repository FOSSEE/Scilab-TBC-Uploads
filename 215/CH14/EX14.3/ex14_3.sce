clc
//Example 14.3
//Install Symbolic toolbox
//Find the Inverse Laplace transform
syms s
a=7/s
b=31/(s+17)
x=ilaplace(a)
y=ilaplace(b)
g=x-y
disp(g,'g(t)=')