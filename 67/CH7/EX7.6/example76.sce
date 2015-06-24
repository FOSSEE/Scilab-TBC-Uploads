//Example 7.6
clc;
syms n z;
x=1;
X=symsum(x*(z^-n),n,-%inf,0);
disp(X,'X(z)=');
