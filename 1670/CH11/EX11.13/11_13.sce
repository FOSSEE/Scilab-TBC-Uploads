//Example 11.13
//Eigenvalue Problem
//Page no. 387
clc;clear;close;

h1=1/2;h2=1/3;
lbd=poly(0,'lbd')
mu=9*lbd/16;
r1(1)=64
A=[2*lbd-324,81;243,lbd-324];
disp(determ(A),'Characteristic Equation = ');
r=roots(determ(A))
disp(r,'Roots = ')
r1(2)=r(2)
Q=((h1/h2)^2*r1(2)-r1(1))/((h1/h2)^2-1)
disp(Q,'Q12 = ')