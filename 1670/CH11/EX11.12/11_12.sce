//Example 11.12
//Eigenvalue Problem
//Page no. 385
clc;clear;close;

h1=1/4;h2=1/5;
lbd=poly(0,'lbd')
mu=9*lbd/16;
A=[lbd-64,16;32,lbd-64];
disp(determ(A),'Characteristic Equation = ');
r=roots(determ(A))
disp(r,'Roots = ')
r1(1)=r(2)
A=[lbd-100,0,25;0,lbd-100,50;25,50,lbd-100];
disp(determ(A),'Characteristic Equation = ');
r=roots(determ(A))
disp(r,'Roots = ')
r1(2)=r(3)
Q=((h1/h2)^2*r1(2)-r1(1))/((h1/h2)^2-1)
disp(Q,'Q12 = ')