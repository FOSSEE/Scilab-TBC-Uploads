//Example 7.61b
clc;
syms z n;
x1=(1/3)^n;
X1=symsum(x1*(z^-n),n,0,%inf);
x2=(1/2)^n;
X2=symsum(x2*(z^-n),n,-%inf,-1);
X=X1+X2;