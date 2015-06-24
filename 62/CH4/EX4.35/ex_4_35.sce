//unilateral z-transform
clear;
clc;
syms n z a;
x=a^n;
X=symsum(x*z^-n,n,0,%inf)
disp(X,"ans=")
//x[n]=a^(n+1)*u[n+1]
x=a^(n+1);
X=symsum(x*z^-n,n,0,%inf)
disp(X,"ans=")