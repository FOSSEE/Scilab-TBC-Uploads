//Example 7.2
clc;
syms n z;
x=1;
X=symsum(x*(z^-n),n,0,0);
disp(X,'X(z)=');