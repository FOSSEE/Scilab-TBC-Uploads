//Graphical//
//Example 3.2.2
//Z transform of x[n] = cos(Wo.n).u[n]
//Z transform of y[n] = sin(Wo.n).u[n]
clear;
close;
clc;
syms n z;
Wo =2;
x1=exp(sqrt(-1)*Wo*n);
X1=symsum(x1*(z^(-n)),n,0,%inf);
x2=exp(-sqrt(-1)*Wo*n);
X2=symsum(x2*(z^(-n)),n,0,%inf)
X =(X1+X2)
disp(X,"ans=")
Y =(1/(2*sqrt(-1)))*(X1-X2)
disp(Y,"ans=")
