//clear//
//Example 10.2:Z transform of x[n] = -a^n. u[-n-1]
//a = 0.5
clear;
close;
clc;
syms n z;
a = 0.5;
x=-(0.5)^(-n)
X=symsum(x*(z^(n)),n,1,%inf)
disp(X,"ans=")
//Result
//-1.0*(2^(%inf+1)*z^(%inf+1)-2*z)/(2*z-1) 
//Equivalent to -1*-2*z/(2*z-1) = 1/(1-0.5*z^-1)
