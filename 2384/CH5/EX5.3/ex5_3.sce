// Exa 5.3
clc;
clear;
close;
format('v',7)
// Given data
P = 1.5;// in kW
P = P * 10^3;// in W
pf = 0.2;// in lag
phi= acosd(pf);
V_L = 400;// in V
f = 50;// in Hz
V_Ph = V_L/sqrt(3);// in V
//P = sqrt(3)*V_L*I_L*cos(phi);
I_L = P/(sqrt(3)*V_L*cosd(phi));// in A
I_Ph = I_L;// in A
Z_Ph = V_Ph/I_Ph;// in ohm
R_Ph = Z_Ph*cosd(phi);// in ohm
disp(R_Ph,"The Resistance in Ω is");
X_Ph = sqrt( (Z_Ph^2) - (R_Ph^2) );// in  ohm
L_Ph = X_Ph/(2*%pi*f);// in H
disp(L_Ph,"The inductance in H is");

