//control systems by Nagoor Kani A
//Edition 3
//Year of publication 2015
//Scilab version 6.0.0
//operating systems windows 10
// Example 5.7

clc;
clear; 
s=poly(0,'s')
a=(s^5)+(4*s^4)+(8*s^3)+(8*s^2)+(7*s)+4
b=coeff(a)
n=length(b)
R=routh_t(a)
disp(R,'the routh array is;')
ap=s^2+1
r=roots(ap)
disp(r,'the roots are')
disp ('the roots of auxillary equation are in imagianry axis so the system is marginally stable')
disp('three roots lie in left half of s plane')
