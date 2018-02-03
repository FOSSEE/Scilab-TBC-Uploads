//Example 5.7
//page 324
//Control Systems: Principles and Design 
//M Gopal, Second Edition, Tata McGraw-Hill
//Chapter:Concepts of Stability: Routh Stability Array

xdel(winsid())//close all graphics Windows
clear;
clc;
//transfer function
s=%s;
P=s^6+s^5+3*s^4 + 3* s^3 +3*s^2 +2*s +1;
//routh array
r=routh_t(P)
disp(r,"Routh Array")
[r,num]=routh_t(1/P,20)
disp("We know, eps tends to zero")
if num==0
   disp("System is stable")
else
   mprintf("There are %g sign changes in entries of first column.\nTherefore, system is unstable.", num)
end
