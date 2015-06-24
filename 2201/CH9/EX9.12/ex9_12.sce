// Exa 9.12
clc;
clear;
close;
// Given data
k = 0.16;// in mA/V^2
V_T = 2;// in V
I_D = 0.5;// in mA
V_DD = 6;// in V
V_SS = -6;// in V
V_GS = V_T + (sqrt(I_D/k));// in V
R_S = 2;// in k ohm
V_S = (I_D*R_S) - V_DD;// in V
V_G = V_GS+V_S;// in V
I = 0.1*I_D;// in mA
R2 = (V_G+V_DD)/I;// in k ohm
disp(R2,"The value of R2 in k ohm is");
R1 = (V_DD - V_G)/I;// in k ohm
disp(R1,"The value of R1 in k ohm is");
R_D = 10;// in k ohm
V_DS = (V_DD-V_SS) - (I_D*(R_S+R_D));// in V
disp(V_DS,"The value of V_DS in V is");
V_DSsat = V_GS-V_T;// in V
disp(V_DSsat,"The value of V_DS(sat) in V is");
if V_DS>V_DSsat then
    disp("The MOSFET is in saturation region")
end

// Note: The value of R1 is in k ohm but in the book it is wrong.
