// Exa 3.23
clc;
clear;
close;
// Given data
C_P = 1.068;// in kJ/kg-K
C_V = 0.775;//in kJ/kg-K
R = C_P-C_V;// in kJ/kg-K
R= R*10^3;// in J/kg-K
P1 = 12;// in bar
P1= P1*10^5;// in N/m^2
V1 = 0.15;//in m^3
V2= 0.28;// in m^3
m = 1;// in kg
T1 = (P1*V1)/(R* m);// in K
T2 = T1 * (V2/V1);// in K
disp(T2-273,"Temperature at the end of Constant pressure in  °C is");
W = P1* (V2-V1);// in J
W = W * 10^-3;// in kJ
Gamma = 1.38;
V3 = 1.5;// in m^3
T3 = T2/((V3/V2)^(Gamma-1));// in K
T3 = T3 - 273;// in degree C
disp(T3,"Temperature at the end of Isentropic in °C is");
T3 = T3 + 273;// in K
W1 = m *C_V*(T2-T3);//work done during isentropic expansion in kJ
W2 = W+W1;// in kJ
disp(W2,"Total Work done on in kJ is");
