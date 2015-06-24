//Example 7.19
//Find the inverse Z-transform using long division method
clc;
clear;
z=poly(0,'z');
x=ldiv(z^2,z^2-(3/2)*z+(1/2),4);
disp(x,'x[n]=');