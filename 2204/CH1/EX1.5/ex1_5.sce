// Exa 1.5
clc;
clear;
close;
// Given data
I_D1 = 100;// in µA
k_n = 200;// in µA/V^2
W = 10;// in µm
l = 1;// in µm
V_A = 20;// in V
V_ov = sqrt((I_D1*2)/(k_n*(W/l)));// in V
V_t = 0.7;// in V
V_GS = V_t + V_ov;// in V
V_GS = round(V_GS);// in V
V_DD = 3;// in V
I_REF = 100;// in µA
I_REF = I_REF * 10^-3;// in mA
R = (V_DD - V_GS)/I_REF;// in k ohm
disp(R,"The value of R in kΩ is");
V_ov_min = V_ov ;// in volt
disp(V_ov_min,"The lowest possible value of V_o in V is");
r_o2 = V_A/I_D1;// in M ohm
disp(r_o2,"The output resistance in MΩ is");
V_O = V_GS;// in V
del_Io = V_O/r_o2;// in µA
disp(del_Io,"The change in output current in µA is");
