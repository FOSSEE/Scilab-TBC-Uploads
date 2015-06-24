//Graphical//
//Example 3.1.4
//Z transform of x[n] = -alpha^n. u[-n-1]
//alpha = 0.5
clear;
close;
clc;
syms n z;
x=-(0.5)^(-n)
X=symsum(x*(z^(n)),n,1,%inf)
disp(X,"ans=")
