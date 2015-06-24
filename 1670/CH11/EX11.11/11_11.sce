//Example 11.11
//Eigenvalue Problem
//Page no. 383
clc;clear;close;
h1=1;h2=3/4;
lbd1=2;
lbd=poly(0,'lbd')
mu=9*lbd/16;
A=[4-mu,-2,0;-2,4-mu,-1;0,-4,4-mu];
disp(determ(A),'Characteristic Equation = ');
r=roots(determ(A))
disp(r,'Roots = ')
r1=r(3)
Q=((h1/h2)^2*r1-lbd1)/((h1/h2)^2-1)
disp(Q,'Q12 = ')