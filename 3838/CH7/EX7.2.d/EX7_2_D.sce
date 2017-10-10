//Example 7.2.D
clc;
syms a z n;
x=(0.5)^(n);
X=symsum(x*(z^-n),n,0,%inf);
d=0.8^(n);
D=symsum(d*(z^-n),n,-(%inf),-1);
disp(D+X,'X(z)=');
