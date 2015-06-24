//Example 2.10
//MAXIMA SCILAB TOOLBOX REQUIRED FOR THIS PROGRAM
//Z transform of r^n.cos(Wo*n)
clc;
syms r Wo n z;
x1=(r^n)*exp(sqrt(-1)*Wo*n);
X1=symsum(x1*(z^-n),n,0,%inf);
x2=(r^n)*exp(-sqrt(-1)*Wo*n);
X2=symsum(x2*(z^-n),n,0,%inf);
X=(X1+X2)/2;
disp(X,'X(z)=');