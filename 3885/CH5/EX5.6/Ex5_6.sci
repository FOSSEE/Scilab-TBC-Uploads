//control systems by Nagoor Kani A
//Edition 3
//Year of publication 2015
//Scilab version 6.0.0
//operating systems windows 10
// Example 5.6

clc;
clear; 
s=poly(0,'s')
a=(s^7)+(5*s^6)+(9*s^5)+(9*s^4)+(4*s^3)+(20*s^2)+(36*s)+36
b=coeff(a)
n=length(b)
R=routh_t(a)
disp(R,'the routh array is;')
//divide characterstic equation by auxilary polynomial to get quotient polynomial
//routh table for quotient poly nomial
a1=(s^3)+(5*s^2)+(9*s)+9 //quotient poly nomial
b1=coeff(a1)
n1=length(b1)
R1=routh_t(a1)
disp(R1,'the routh array for quotient poly nomial is;')
ap=s^4+4 //auxillary polynomial
r=roots(ap)
disp(r,'the roots are')
disp('the system is unstable')
disp('two roots on right half of s plane and five roots lie in left half of s plane')
