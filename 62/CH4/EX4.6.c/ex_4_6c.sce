clear;
clc;
syms n z;
x1=(1/2)^n;
X1=symsum(x1*(z^-n),n,-%inf,-1)
x2=3^-n;
X2=symsum(x2*(z^-n),n,0,%inf)
//we see that the ROC of X1 and X2 donot overlap therefore X(z)does not exists