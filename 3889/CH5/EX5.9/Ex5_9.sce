//Example 5.9
//page 327
//Control Systems: Principles and Design 
//M Gopal, Second Edition, Tata McGraw-Hill
//Chapter:Concepts of Stability: Routh Stability Array

xdel(winsid())//close all graphics Windows
clear;
clc;
//transfer function
s=%s;
P=s*(s^2+s+1)*(s+4);
k=poly(0,'k')
//routh array
disp('Routh Array')
r=routh_t(1/P,k)
disp(r)
disp('Solving for positive values,')
disp(r($-1,1))
mprintf('%g >K >0, for stability',kpure(1/P))



