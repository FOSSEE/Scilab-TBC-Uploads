//Example 2.41 (c)
//MAXIMA SCILAB TOOLBOX REQUIRED FOR THIS PROGRAM
//Z transform of (-1)^n.cos(%pi/3*n)
clc;
syms n z;
Wo=%pi/3;
x1=exp(sqrt(-1)*Wo*n);
X1=(-1)^n*symsum(x1*(z^-n),n,0,%inf);
x2=exp(-sqrt(-1)*Wo*n);
X2=(-1)^n*symsum(x2*(z^-n),n,0,%inf);
X=(X1+X2)/2;
disp(X,'X(z)=');