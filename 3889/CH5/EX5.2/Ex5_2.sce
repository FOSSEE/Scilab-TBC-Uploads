//Example 5.2
//page 318
//Control Systems: Principles and Design 
//M Gopal, Second Edition, Tata McGraw-Hill
//Chapter: Concepts of Stability: Routh Stability Array

xdel(winsid())//close all graphics Windows
clear;
clc;
//transfer function
s=%s;
P=3*s^4 + 10* s^3 +5*s^2 +5*s +2;
//routh array
disp('Routh Array')
r=routh_t(P)
disp(r)
[r,num]=routh_t(1/P,20)
if num==0
   disp("As all elements of first row are positive,system is stable")
else
   mprintf("There are %g sign changes in entries of first column.\nTherefore, system is unstable.", num)
end
