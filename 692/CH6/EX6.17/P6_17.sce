//EXAMPLE 6.16
//Coefficients of Rational form

clc;
clear;
z=%z;
num = 18*z^3;
den = 18*z^3 + 3*z^2 - 4*z - 1;
disp(coeff(num)/18,'the Numerator polynomial coefficients are:');
disp(coeff(den)/18,'the denominator polynomial coefficients are:');