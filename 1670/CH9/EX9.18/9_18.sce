//Example 9.16
//Particular Solution
//Page no. 297
clc;clear;close;

x=poly(0,'x')
n=1;
f=x^(n)-4*x^(n-1);
z=roots(f)
disp(z,f)
printf('\t       n\nC.F. = (c1) (%g)',z(1))
A=[1,1;0,1];
B=[6;0];
C=inv(A)*B;
printf('\n\n\t \t     n\nP.I = ((%g)n+(%g)n)*(4)',C(1),C(2))