// Exa 5.6
format('v',6)
clc;
clear;
close;
// Given data
k = 0.1;// in mA/V^2
V_T  = 1;// in V
R1 = 33;//in k ohm
R2 = 21;// in k ohm
V_DD = 6;// in V
R_D = 18;// in k ohm
V_G = (R2/(R2+R1))*V_DD;// in V
V_S = 0;// in V
V_GS = V_G-V_S;// in V
I_D = k*((V_GS-V_T)^2);// in mA
disp(I_D,"The value of I_D in mA is");
V_DS = V_DD - (I_D*R_D);// in V
disp(V_DS,"The value of V_DS in V is"); 
V_DSsat = V_GS-V_T;// in V
disp(V_DSsat,"The value of V_DS(sat) in V is");
if V_DS>V_DSsat then
    disp("MOSFET is in saturation region")
end
