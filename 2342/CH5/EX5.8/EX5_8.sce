// Exa 5.8
format('v',5)
clc;
clear;
close;
// Given data
R2 = 18;// in k ohm
R1 = 33;// in k ohm
V_DD = 6;// in V
V_G = (R2/(R1+R2))*V_DD;// in V
V_S = V_DD;// in V
V_SG = V_S-V_G;// in V
disp(V_SG,"The value of V_SG in V is");
k = 0.1;
V_T = -1;// in V
I_D = k*((V_SG+V_T)^2);// in mA
disp(I_D,"The value of I_D in mA is");
R_D = 3;// in k ohm
V_SD = V_DD - (I_D*R_D);// in V
disp(V_SD,"The value of V_SD in V is");
V_SDsat  = V_SG+V_T;// in V
disp(V_SDsat,"The value of V_SD(sat) in V is");
if V_SD>V_SDsat then
    disp("The p MOSFET is indeed biased in the saturation region")
end
