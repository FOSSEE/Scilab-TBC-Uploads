//Example 14.2
//Install Symbolic toolbox
//Find the Laplace transform
syms t s
clc
z=integ(2*exp(-s*t),t,3,%inf)
//The second term will result in zero
disp(z,'F(s)=')