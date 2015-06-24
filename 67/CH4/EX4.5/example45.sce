//Example 4.5
//Find DTFT of x[n]=a^|n| for -1<a<1
clc;
syms w a n;
x1=a^n;
x2=a^(-n);
X1=symsum(x1*exp(-%i*w*n),n,0,%inf);
X2=symsum(x2*exp(-%i*w*n),n,-%inf,-1);
X=X1+X2;
disp(X,'X(e^jw)=');