// Exa 3.24
clc;
clear;
close;
// Given data
C_P = 1.005;// in kJ/kg-K
C_V = 0.718;// in kJ/kg-K
R = C_P-C_V;// in kJ/kg-K
P1 = 20;//in bar
P2 = 12;// in bar
T1 = 200;//in degree C
T1 = T1 + 273;// in K
T2 = 125;//in degree c
T2 = T2 + 273;// in K
V1 = (R*10^3*T1)/(P1*10^5);// in m^3
V2 = (R*10^3*T2)/(P2*10^5);// in m^3
W = 10^5 * integrate('-293*V + 40','V',0.0679,0.0952);//in Joules
W = round(W * 10^-3);// in  kJ
disp(W,"Work done in kJ is");
m = 1;// in kg
del_U = m*C_V*(T2-T1);//change in internal energy in kJ
disp(del_U,"Change in internal energy in kJ is");
disp("Negative sign indicates that there is decrease in internal energy of the gas. ")
C_Enthalpy = m*C_P*(T2-T1);//change in enthalpy in kJ
disp(C_Enthalpy,"The change in enthalpy in kJ is :")
disp("Negative sign indicates that there is decrease in enthalpy of the gas")
Q = W+ del_U;// in kJ
disp(Q,"Heat transfer in kJ is");
disp("Negative sign indicates that the heat is rejected by the air")
