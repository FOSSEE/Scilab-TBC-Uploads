//Example 7.13
//Diffrentiation property is used here
clc;
syms n z;
x1=((-1/2)^n);
x2=(1/4)^-n;
X1=symsum(x1*(z^-n),n,0,%inf);
X3=(-z)*diff(X1,z);
X2=symsum(x2*(z^-n),n,-%inf,0);
X=X3*X2;
disp(X,'X(z)=');