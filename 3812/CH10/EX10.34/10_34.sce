//Example 10_34
//Inverse Z-transform using long division method
clc;
clear;
z=poly(0,'z');
x=ldiv(z,(z-0.5),4);
disp(x,'x[n]=');
