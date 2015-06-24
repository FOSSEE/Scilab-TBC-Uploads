//Example 7.24a
//Inverse Z-transform using long division method
clc;
clear;
z=poly(0,'z');
x=ldiv(2*z^3+3*z^2,(z+1)*(z+0.5)*(z-0.25),4);
disp(x,'x[n]=');