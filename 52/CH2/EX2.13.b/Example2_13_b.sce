//Example 2.13 (b)
//MAXIMA SCILAB TOOLBOX REQUIRED FOR THIS PROGRAM
//Z transform
clc;
syms n z k;
x1=1;
X1=symsum(x1*z^(-n),n,0,0);
x2=1;
X2=symsum(x2*z^(-n),n,1,1);
x3=1;
X3=symsum(x3*z^(-n),n,2,2);
X=0.5*X1+X2-1/3*X3;
disp(X,'X(z)=');