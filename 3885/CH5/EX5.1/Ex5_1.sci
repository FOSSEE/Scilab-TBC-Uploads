//control systems by Nagoor Kani A
//Edition 3
//Year of publication 2015
//Scilab version 6.0.0
//operating systems windows 10
// Example 5.1

clc;
clear; 
s=poly(0,'s')
a=(s^4)+(8*s^3)+(18*s^2)+(16*s)+5
b=coeff(a)
n=length(b)
R=routh_t(a)
disp(R,'the routh array is;')
disp('since there is no sign change  the system is stable')
disp('all the four roots lie left half of the s plane')
