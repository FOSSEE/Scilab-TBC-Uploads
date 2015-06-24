//clc()
P = 3500;//kPa
T = 673.15;//K
SV = 0.08453;//m^3/kg
Vcondensed = 1/2;
m = 100;//kg
V = m * SV / (m/2);
//m*(Vl+Vg)*Vcondensed = m * SV
//But Vl is negligible,
Vg = m * SV / (m * Vcondensed);
//using steam table
T1 = 459.5;//K
P1 = 1158;//kPa
//internal energy of superheated steam from steam table
I = 2928.4;//kJ/kg
U1 = m * I;
Ul = 790;//kJ/kg
Ug = 2585.9;//kJ/kg
U2 = m*Vcondensed*Ul + m*(1-Vcondensed)*Ug;
Q = U2 - U1;
disp("kJ",Q,"The amount of heat removed fromt he system = ")