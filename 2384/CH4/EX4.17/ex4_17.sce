// Exa 4.17
clc;
clear;
close;
format('v',6)
// Given data
C = 50;// in µF
C = C * 10^-6;// in F
R = 20;// in ohm
L = 0.05;// in H
V = 200;// in V
f = 50;// in Hz
X_C = 1/(2*%pi*f*C);// in ohm
Z1 = X_C;// in ohm
I1 = V/X_C;// in A
X_L = 2*%pi*f*L;// in ohm
Z2 = sqrt( (R^2) + (X_L^2) );// in ohm
I2 = V/Z2;// in A
// tan(phi2) = X_L/R;
phi2 = atand(X_L/R);// in degree
phi1 = 90;// in degree
I_cos_phi = I1*cosd(phi1) + I2*cosd(phi2);// in A 
I_sin_phi = I1*sind(phi1) - I2*sind(phi2);// in A 
phi= atand(I_sin_phi/I_cos_phi);// in °
I= sqrt(I_cos_phi^2+I_sin_phi^2);// in A
P= V*I*cosd(phi);// in W
disp(I,"The line current in A is : ")
disp("The power factor is : "+string(cosd(phi))+" lag");
disp(P,"The power consumed in W is : ")
