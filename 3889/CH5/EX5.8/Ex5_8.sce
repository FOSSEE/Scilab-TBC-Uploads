//Example 5.8
//page 326
//Control Systems: Principles and Design 
//M Gopal, Second Edition, Tata McGraw-Hill
//Chapter:Concepts of Stability: Routh Stability Array

xdel(winsid())//close all graphics Windows
clear;
clc;
//transfer function
//substitution of s-1 for s
s=poly(1,'s');
P= s^3 +7*s^2 +25*s +39;
//routh array
r=routh_t(P)
disp(r,"Routh Array")
[r,num]=routh_t(1/P,20)
if num==0
   disp("As all the elements in first column are positive,roots of characteristic polynomial are more negative than -1 ")
else
   mprintf("There is %g sign changes in entries of first column.\nTherefore, characteistic polynomial has some roots relatively unstable with respect to s=-1", num)
end
