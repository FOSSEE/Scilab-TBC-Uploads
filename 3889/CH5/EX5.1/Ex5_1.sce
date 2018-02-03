//Example 5.1
//page 318
//Control Systems: Principles and Design 
//M Gopal, Second Edition, Tata McGraw-Hill
//Chapter: Concepts of Stability: Routh Stability Array

xdel(winsid())//close all graphics Windows
clear;
clc;
//transfer function
s=%s;
P=s^4 + 8* s^3 +18*s^2 +16*s +5;
//routh array
disp('Routh Array')
r=routh_t(P)
disp(r)
[r,num]=routh_t(1/P,20)
if num==0
   disp("As all the elements in first column are positive, system is stable")
else
   mprintf("There is %g sign changes in entries of first column.\nTherefore, system is unstable.", num)
end
