// Exa 4.21
clc;
clear;
close;
// Given data
R1 = 5;// in kohm
R1= R1*10^3;// in ohm
R2 = 5;// in kohm
R2= R2*10^3;// in ohm
R_B = R1*R2/(R1+R2);// in ohm
R_E = 1;// in kohm
R_E = R_E * 10^3;// in ohm
V_EE = 3;// in V
V_Th = (R2*V_EE)/(R1+R2);// in V
V_BE = 0.7;// in V
bita = 44;
I_B = (V_EE - V_BE - V_Th)/( ((1+bita)*R_E)+R_B);// in A
I_BQ = I_B;// in A
disp(I_BQ*10^6,"The value of I_BQ in µA is");
I_C = bita*I_BQ;// in A
disp(I_C*10^3,"The value of I_C in mA is");
I_E = (1+bita)*I_B;// in A
disp(I_E*10^3,"The value of I_E in mA is");
V_EC = (I_E*R_E)-V_EE;// in V
disp(V_EC,"The value of V_EC in V is");
disp("Q-point is "+string(V_EC)+" V, "+string(I_C*10^3)+" mA")
