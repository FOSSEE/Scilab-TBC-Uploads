clc
//Example 14.4
//Install Symbolic toolbox
//Find the Inverse Laplace transform
syms s t
a=2
b=4/s
x=ilaplace(b)
//Inverse laplace transform of a constant is
disp('inverse laplace(2)=2*delta(t)')
disp('Answer is')
disp(x+'2*delta(t)')
