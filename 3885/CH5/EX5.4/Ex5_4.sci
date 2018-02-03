//control systems by Nagoor Kani A
//Edition 3
//Year of publication 2015
//Scilab version 6.0.0
//operating systems windows 10
// Example 5.4

clc;
clear; 
s=poly(0,'s')
a=(9*s^5)-(20*s^4)+(10*s^3)-(s^2)-(9*s)-10
b=coeff(a)
n=length(b)
R=routh_t(a)
disp(R,'the routh array is;')
disp('there are 3 sign changes in first column of routh array ')
disp('three roots lie on right side of s plane so the system is unstable')
