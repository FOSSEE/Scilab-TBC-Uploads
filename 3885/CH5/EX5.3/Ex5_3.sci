//control systems by Nagoor Kani A
//Edition 3
//Year of publication 2015
//Scilab version 6.0.0
//operating systems windows 10
// Example 5.3

clc;
clear; 
s=poly(0,'s')
a=(s^5)+(s^4)+(2*s^3)+(2*s^2)+(3*s)+5
b=coeff(a)
n=length(b)
R=routh_t(a)
disp(R,'the routh array is;')
disp('the system is unstable')
