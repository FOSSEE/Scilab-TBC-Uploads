//control systems by Nagoor Kani A
//Edition 3
//Year of publication 2015
//Scilab version 6.0.0
//operating systems windows 10
// Example 5.2

clc;
clear; 
s=poly(0,'s')
a=(s^6)+(2*s^5)+(8*s^4)+(12*s^3)+(20*s^2)+(16*s)+16
b=coeff(a)
n=length(b)
R=routh_t(a)
disp(R,'the routh array is;')
ap=s^4+6*s^2+8
r=roots(ap)
disp(r,'the roots of auxilary polynomial;')
disp('the system is marginally stable;')
disp('four roots lying in imaginary axis ;')
