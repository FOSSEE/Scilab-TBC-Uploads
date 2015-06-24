// Exa 4.16
clc;
clear;
close;
format('v',6)
// Given data
R = 20;// in ohm
L = 31.8;// in mH
L = L * 10^-3;// in H
V = 230;// in V
f = 50;// in Hz
I_R = V/R;// in A
X_L = 2*%pi*f*L;// in ohm
I_L = V/X_L;// in A
I = sqrt( (I_R^2) + (I_L^2) );// in A
disp(I,"The line current in A is");
phi= acosd( I_R/I);
disp("The power factor is : "+string(cosd(phi))+" lag");
P = V*I*cosd(phi);// in W
disp(P,"The power consumed in W is");
