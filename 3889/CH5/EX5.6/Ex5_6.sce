//Example 5.6
//page 323
//Control Systems: Principles and Design 
//M Gopal, Second Edition, Tata McGraw-Hill
//Chapter:Concepts of Stability: Routh Stability Array

xdel(winsid())//close all graphics Windows
clear;
clc;
//transfer function
s=%s;
P=s^5+3*s^4 + 2* s^3 +6*s^2 +6*s +9;
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
