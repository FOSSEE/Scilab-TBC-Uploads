//Graphical//
//Example 3.1.2
//Z transform of x[n] = (0.5)^n. u[n]
clear;
clc;
close;
syms n z;
x=(0.5)^n
X=symsum(x*(z^(-n)),n,0,%inf)
disp(X,"ans=")
