clear;
clc;
syms n z a;
x=a^-n;
X=symsum(x*z^-n,n,-%inf,-1)
disp(X,"ans=")