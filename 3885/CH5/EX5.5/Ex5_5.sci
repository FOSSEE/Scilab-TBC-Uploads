//control systems by Nagoor Kani A
//Edition 3
//Year of publication 2015
//Scilab version 6.0.0
//operating systems windows 10
// Example 5.5

clc;
clear; 
s=poly(0,'s')
a=(s^7)+(9*s^6)+(24*s^5)+(24*s^4)+(24*s^3)+(24*s^2)+(23*s)+15
b=coeff(a)
n=length(b)
R=routh_t(a)
disp(R,'the routh array is;')
disp('there is sign change in first column of routh array so ths system is unstable;')
ae=s^4+s^2+1
r=roots(ae)
disp(r,'the roots of auxilary equation are')
disp('two roots lie on right half of splane five roots lie on left half of s plane')

