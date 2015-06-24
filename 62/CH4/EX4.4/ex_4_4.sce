clear;
clc;
syms N n z a;
x=a^n;
X=symsum(x*z^-n,n,0,N-1)
//pole zero map for N=8,a=2,
z=%s;
X1=%s;
X1=0;
for i=0:7
    X1=X1+(2*z^-1)^i
end
plzr(X1)