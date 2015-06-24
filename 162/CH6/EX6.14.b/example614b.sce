//Example 6.14b
clc;
syms z n;
x1=(1/5)^n;
x2=(1/4)^n;
X1=symsum(x1*(z^-n),n,0,%inf);
X2=symsum(x2*(z^-n),n,-%inf,-1);
X=X1+X2;
disp(X,'X(z)=');