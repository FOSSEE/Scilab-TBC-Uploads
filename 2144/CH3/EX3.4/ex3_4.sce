// Exa 3.4
clc;
clear;
close;
// Given data
R = 0.29;// in kJ/kg-K
R = R * 10^3;// in J/kg-K
C_p = 1.005;// in kJ/kg-K
T = 185;// in degree C
T = T + 273;// in K
T2 = 70+273;// in K
V1 = 0.23;// in m^3
P = 500;// in kN/m^2
P = P * 10^3;// in N/m^2
m = (P*V1)/(R*T);// in kg
Q = m*C_p*(T2-T);// in kJ
disp(Q,"Heat transferred in kJ is");
disp("i.e. "+string(abs(Q))+" kJ heat has been abstracted from the gas")
V2 = V1*(T2/T);// in m^3
W = P * (V2-V1);// in J
W= W*10^-3;//in kJ
disp(W,"The work done in kJ is");
disp("i.e. "+string(abs(W))+" kJ work has been done on the gas ")
R= R*10^-3;// in kJ/kg-K
C_v = C_p - R;// in kJ/kg-K
I_E = m*C_v*(T2-T);// Change in internal energy in kJ
disp(I_E,"Change in internal energy in kJ is");
disp("i.e. "+string(abs(I_E))+" kJ energy is decrease in internal energy")
