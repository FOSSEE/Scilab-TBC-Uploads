//control systems by Nagoor Kani A
//Edition 3
//Year of publication 2015
//Scilab version 6.0.0
//operating systems windows 10
// Example 5.8

clc;
clear; 
s=poly(0,'s')
a=(s^6)+(s^5)+(3*s^4)+(3*s^3)+(3*s^2)+(2*s)+1
b=coeff(a)
n=length(b)
R=routh_t(a)
disp(R,'the routh array is;') 
//characterstic polynomial can be expressed as product of auxillary polynomial and quotient polynomial
//divide characterstic equation by auxilary polynomial to get quotient polynomial
//routh table for quotient poly nomial
a1=(s^4)+(s^3)+(2*s^2)+(2*s)+1 //quotient poly nomial
b1=coeff(a1)
n1=length(b1)
R1=routh_t(a1)
disp(R1,'the routh array for quotient poly nomial is;')
ap=s^2+1
r=roots(ap)
disp(r,'the roots are')
disp('the system is unstable')
disp('two roota on imaginary axis ,two roots on right half of s plane and two roots lie in left half of s plane')
