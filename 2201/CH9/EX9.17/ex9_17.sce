// Exa 9.17
clc;
clear;
close;
// Given data
k = 0.12;// in mA/V^2
V_T = -2.5;// in V
V_GS = 0;
I_D = k*((V_GS-V_T)^2);// in mA
disp(I_D,"The value of I_D in mA is");
V_DD = 6;// in V
R_S = 4.7;// in k ohm 
V_DS = V_DD -(I_D*R_S);// in V
disp(V_DS,"The value of V_DS in V is "); 
V_S = 0;// in V 
V_DSsat = V_S - V_T;// in V
disp(V_DSsat,"The value of V_DS(sat) in V is");
if V_DS<V_DSsat then
    disp("The device is in the non saturation region")
end
