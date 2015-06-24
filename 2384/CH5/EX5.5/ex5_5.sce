// Exa 5.5
clc;
clear;
close;
format('v',6)
// Given data
V_L = 400;// in V
f = 50;// in Hz
I_L = 17.32;// in A
pf = 0.8;//in lag
I_Ph = I_L/sqrt(3);// in A
disp(I_Ph,"The phase current in A is");
V_Ph = V_L;// in V
Z_Ph = V_Ph/I_Ph;// in ohm
phi = acosd(pf)// in lag
R_Ph = Z_Ph*cosd(phi);// in ohm
disp(R_Ph,"The resistance of coil in Ω is");
X_Ph = sqrt( (Z_Ph^2) - (R_Ph^2) );// in ohm
// X_Ph = 2*%pi*f*L;
L = X_Ph/(2*%pi*f);// in H
L = L * 10^3;// in mH
disp(L,"The inductance of coil in mH is");
P = V_Ph*I_Ph*cosd(phi);// in W
disp(P,"The power drawn by each coil in W is");
