//clear//
//Caption: Program to find coefficients of generator polynomial
//Example8.6
//page 308
clear;
clc;
close;
x = poly(0,'x');
G = x^7+0+x^5+0+0+x^2+x+1;
C = coeff(G);
disp(C($:-1:1),'Coefficients of generator polynomial C =')
//Result
// Coefficients of generator polynomial C = 1.    0.    1.    0.    0.    1.    1.    1. 
