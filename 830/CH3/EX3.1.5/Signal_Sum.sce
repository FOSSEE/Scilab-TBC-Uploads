//Graphical//
//Example 3.1.5
//Z transform of x[n] = a^n.u[n]+b^n.u[-n-1]
//a = 0.5 and b = 0.6
clear;
close;
clc;
syms n z;
x1=(0.5)^(n)
X1=symsum(x1*(z^(-n)),n,0,%inf)
x2=(0.6)^(-n)
X2=symsum(x2*(z^(n)),n,1,%inf)
X = (X1+X2)
disp(X,"ans=")
