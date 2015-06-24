//Example 4.10
//Find DTFT of x[n]=cos(Won) with Wo=(2*pi/5)
clc;
syms w n;
x1=exp(%i*(2*%pi*n/5));
x2=exp(-%i*(2*%pi*n/5));
X1=symsum(x1*exp(-%i*w*n),n,0,%inf);
X2=symsum(x2*exp(-%i*w*n),n,0,%inf);
X=(X1+X2)/2;