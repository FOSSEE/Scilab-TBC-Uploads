//Example 7.48b
clc;
syms z n;
x1=(-1/2)^n;
X1=symsum(x1*(z^-n),n,0,%inf);
x2=(3)^n;
X2=symsum(x2*(z^-n),n,-%inf,-1);
X=(3*X1)-(2*X2);