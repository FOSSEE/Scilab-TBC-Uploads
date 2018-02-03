//Example 5.4
//page 321
//Control Systems: Principles and Design 
//M Gopal, Second Edition, Tata McGraw-Hill
//Chapter: Concepts of Stability: Routh Stability Array

xdel(winsid())//close all graphics Windows
clear;
clc;
//transfer function
s=%s;
P=s^5+s^4 + 4* s^3 +24*s^2 +3*s +63;
//routh array
disp('Routh Array')
r=routh_t(P)
disp(r)
[r,num]=routh_t(1/P,20)
if num==0
   disp("System is stable")
else
   mprintf("There are %g sign changes in entries of first column.\nTherefore, system is unstable.", num)
end
