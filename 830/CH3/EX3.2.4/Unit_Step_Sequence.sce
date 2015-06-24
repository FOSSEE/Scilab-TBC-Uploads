//Graphical//
//Example 3.2.4
//Z transform of x[n] = u[n]
clear;
clc;
close;
syms n z;
x=(1)^n
X=symsum(x*(z^(-n)),n,0,%inf)
disp(X,"ans=")
