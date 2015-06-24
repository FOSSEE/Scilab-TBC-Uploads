// Exa 1.14
clc;
clear;
close;
// Given data
disp("Part (a) Analysis using approximate diode model")
V_D = 0.7;// in V
disp(V_D,"The value of V_D in V is");
E = 30;// in V
V_R = E-V_D;// in V
disp(V_R,"The value of V_R in V is");
R = 2.2 * 10^3;// in ohm
I_D = V_R/R;
I_D = I_D * 10^3;// in mA
disp(I_D,"The value of I_D in mA is");
disp("Part (b) Analysis using ideal diode model")
V_D = 0;// in V
disp(V_D,"The value of V_D in V is");
V_R = E;// in V
disp(V_R,"The value of V_R in V is");
I_D = V_R/R;
I_D = I_D * 10^3;// in mA
disp(I_D,"The value of I_D in mA is");
