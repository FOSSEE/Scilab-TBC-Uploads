//Example 9.16
//Particular Solution
//Page no. 297
clc;clear;close;

x=poly(0,'x')
n=2;
f=x^(n)-2*x^(n-1)+x^(n-2);
z=roots(f)
disp(z,f)
printf('\t\t\nC.F. = (c1+n*c2) (%g)',z(1))
A=[1,0,0;8,1,0;12,4,1];
B=[1;0;0];
C=inv(A)*B;
printf('\n\n\t  2\nP.I = (%g)n+(%g)n+(%g)',C(1),C(2),C(3))