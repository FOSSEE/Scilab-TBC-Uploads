//Example 5.5
//page 321
//Control Systems: Principles and Design 
//M Gopal, Second Edition, Tata McGraw-Hill
//Chapter:Concepts of Stability: Routh Stability Array

xdel(winsid())//close all graphics Windows
clear;
clc;
//transfer function
s=%s;
P=s^6+2*s^5+8*s^4 + 12* s^3 +20*s^2 +16*s +16;
//routh array
disp('Routh Array')
r=routh_t(P)
disp(r)
[r,num]=routh_t(P)
disp('As there are no sign changes,there is no root on right half of s plane')
disp('However as two rows are having same values, we decide stability on basis of auxiliary equation')
//Extracting and finding roots of auxiliary polynomial
a=flipdim(r(2,:),2)
b=kron(a(1:$), [1 zeros(1,1)])
P1=roots(poly(coeff(b),"x","coeff"))
disp(P1,"Roots of auxiliary equation=")
disp("As roots of auxiliary equation are purely imaginary, system is marginally stable")

