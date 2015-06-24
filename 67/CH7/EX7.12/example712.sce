//Example 7.12
//Ztransform of x[n]=(n^2)*u[n] done by Diffrentiation property
clc;
syms z n;
x=1;
X1=symsum(x*(z^-n),n,0,%inf);
X2=(-z)*(diff(X1,z));
X=(-z)*(diff(X2,z));
disp(X,'X(z)=');