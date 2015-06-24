// Exa 4.5
clc;
clear;
close;
format('v',6)
// Given data
R = 7;// in ohm
L = 31.8;// in mH
L = L * 10^-3;// in H
V = 230;// in V
f = 50;// in Hz
X_L = 2*%pi*f*L;// in ohm
Z = sqrt( (R^2)+(X_L^2) );// in ohm
I = V/Z;// in A
disp(I,"The circuit current in A is");
// tand(phi) = X_L/R;
phi = atand(X_L/R);// in degree lag
disp(phi,"The phase angle in degree is");
// Power factor
powerfactor = cosd(phi);// in lag
disp(powerfactor,"The power factor is");
P = V*I*cosd(phi);// in W
disp(P,"The power consumed in W is");

