// Exa 5.1
clc;
clear;
close;
format('v',6)
// Given data
R = 20;// in ohm
X_L = 15;// in ohm
V_L = 400;// in V
f = 50;// in Hz
V_Ph = V_L/sqrt(3);// in V
Z_Ph = sqrt( (R^2) + (X_L^2) );// in ohm
I_Ph = V_Ph/Z_Ph;// in A
I_L = I_Ph;// in A
disp(I_L,"The line current in A is");
//pf = cos(phi) = R_Ph/Z_Ph;
R_Ph = R;// in ohm
phi= acosd(R_Ph/Z_Ph);
// Power factor
pf= cosd(phi);// in °
disp("The power factor is : "+string(pf)+"° lag.");
P = sqrt(3)*V_L*I_L*cosd(phi);// in W
disp(P,"The power supplied in W is");
