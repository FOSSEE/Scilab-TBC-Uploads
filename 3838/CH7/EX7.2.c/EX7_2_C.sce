//Example 7.2.C
clc;
syms a z n;
x=0.8^(n);
X=symsum(x*(z^-n),n,-(%inf),-1);
disp(X,'X(z)=');
