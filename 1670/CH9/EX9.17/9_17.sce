//Example 9.17
//Particular Solution
//Page no. 298
clc;clear;close;

x=poly(0,'x')
n=2;
f=x^(n)-3*x^(n-1)+2*x^(n-2);
z=roots(f)
disp(z,f)
printf('\t\t    n\nC.F. = (c1+n*c2) (%g)',z(1))
A=[-4,0;2,-2];
B=[2;0];
C=inv(A)*B;
printf('\n\n\t     2\nP.I = (%g)n+(%g)n',C(1),C(2))