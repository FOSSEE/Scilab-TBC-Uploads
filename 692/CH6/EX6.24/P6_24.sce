//Example 6.24
//MAXIMA SCILAB TOOLBOX REQUIRED FOR THIS PROGRAM
//Z transform of v(n)  =(a)^(n)*u(n) - (b)^(n)*u(-n-1)
clc;
clear;
disp('assuming  |b| > a');
syms a n;
x1 = a^n;
X1 = nusum(x1,n,0,%inf);
x1 = b^n;
X1 = nusum(x2,n,-%inf,-1);
Vz = X1 + X2;
disp(Vz,'The Z-transform is = ');
disp('ROC = |a|<|z|<|b|');