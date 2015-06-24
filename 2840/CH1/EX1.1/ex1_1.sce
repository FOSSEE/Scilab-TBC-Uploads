clc;
clear all;
Y = 2e12 // Youngs modulus of steel in dynes per cm square 
g = 981; // Gravity Constant in am per second square
l = 400; // Length of wire in cm
r = 0.1; // Radius of wire in cm
deltaL = 0.1; // Change in length of wire in cm
M = (Y * %pi * r^2 * deltaL )/(g*l*1000);
disp('kg',M,'The mass to be added is',);
//There is slight variation in answer than book's answer..verified in calculator too
