//Example 5.3
//page 319
//Control Systems: Principles and Design 
//M Gopal, Second Edition, Tata McGraw-Hill
//Chapter: Concepts of Stability: Routh Stability Array

xdel(winsid())//close all graphics Windows
clear;
clc;
//transfer function
s=%s;
P=s^6+4*s^5+3*s^4 + 2* s^3 +s^2 +4*s +4;
//routh array
disp('Routh Array')
r=routh_t(P)
disp(r)
[r,num]=routh_t(1/P,20)
if num==0
   disp("As all elements of first row are positive system is stable")
else
   mprintf("There are %g sign changes in entries of first column.\nTherefore, system is unstable.", num)
end
