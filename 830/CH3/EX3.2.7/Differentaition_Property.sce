//Graphical//
//Example 3.2.7
//Z transform of x[n] = n.a^n.u[n]
clear;
clc;
close;
syms n z;
x=(1)^n;
X=symsum(x*(z^(-n)),n,0,%inf)
disp(X,"ans=")
Y = diff(X,z)
