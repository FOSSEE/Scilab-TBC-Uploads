clc;
syms n;
x=ones(1);
X=symsum(x*(z^-n),n,0,%inf);
disp(X,'X(z)=');