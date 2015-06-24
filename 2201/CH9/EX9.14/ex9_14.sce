// Exa 9.14
clc;
clear;
close;
// Given data
I_D = 0.3;// in mA
k = 0.12;// in mA/V^2
V_T = 1;// in V
V_GS = V_T + (sqrt(I_D/k));// in V
V_S = -V_GS;// in V
V_DD = 6;// in V
V_D = 3;// in V
I_DQ = 0.3;// in mA
R_D = (V_DD-V_D)/I_DQ;// in k ohm
disp(R_D,"The value of R_D in k ohm is");
V_DS = V_D - V_S;// in V
disp(V_DS,"The value of V_DS in V is");
V_DSsat = V_GS - V_T;// in V
disp(V_DSsat,"The value of V_DS(sat) in V is");
if V_DS>V_DSsat then
    disp("The MOSFET is in saturation region")
end
