// Exa 8.4
clc;
clear;
close;
// Given data
R_f = 1;// in Mohm
R_f = R_f * 10^6;// in ohm
disp("Part (a)")
V1 = 1;// in V
V2 = 2;// in V
V3 = 3;// in V
R1 = 500;// in kohm
R1 = R1 * 10^3;// in ohm
R2 = 1;// in Mohm
R2 = R2 * 10^6;// in ohm
R3 = 1;// in Mohm
R3 = R3 * 10^6;// in ohm
V_o = -(R_f) * ( (V1/R1)+(V2/R2)+(V3/R3) );// in V
disp(V_o,"The output voltage in V is");

disp("Part (b)")
V1 = -2;// in V
V2 = 3;// in V
V3 = 1;// in V
R1 = 200;// in kohm
R1 = R1 * 10^3;// in ohm
R2 = 500;// in kohm
R2 = R2 * 10^3;// in ohm
R3 = 1;// in Mohm
R3 = R3 * 10^6;// in ohm
V_o = -(R_f) * ( (V1/R1)+(V2/R2)+(V3/R3) );// in V
disp(V_o,"The output voltage in V is");
