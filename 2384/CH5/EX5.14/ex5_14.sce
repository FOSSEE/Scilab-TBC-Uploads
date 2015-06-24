// Exa 5.14
clc;
clear;
close;
format('v',6)
// Given data
V_L = 400;// in V
f = 50;// in Hz
I_L = 17.32;// in A
phi = acosd(0.8);
I_Ph =I_L/sqrt(3);// in A
disp(I_Ph,"The phase current in A is");
V_Ph=V_L;// in V
Z_Ph = V_Ph/I_Ph;// in ohm
Z_Ph= Z_Ph*expm(phi*%i*%pi/180);// in ohm
R= real(Z_Ph);// in ohm
XL= imag(Z_Ph);// in ohm
L= XL/(2*%pi*f);// in H
L= L*10^3;// in mH
disp(R,"The resistance of the coil in Ω is : ")
disp(L,"The inductance of the coil in mH is : ")
// The power drawn by each coil
P_Ph= V_Ph*I_Ph*cosd(phi);// in W
disp(P_Ph,"The power drawn by each coil in W is : ")
