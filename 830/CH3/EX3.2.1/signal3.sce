//Graphical//
//Example 3.2.1
//Z transform of x[n] = 3.2^n.u[n]-4.3^n.u[n]
clear;
close;
clc;
syms n z;
x1=(2)^(n)
X1=symsum(3*x1*(z^(-n)),n,0,%inf)
x2=(3)^(n)
X2=symsum(4*x2*(z^(-n)),n,0,%inf)
X = (X1-X2)
disp(X,"ans=")
