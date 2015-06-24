// Exa 3.8
clc;
clear;
close;
// Given data
P = 7;// in bar
P = P *10^5;// in N/m^2
R = 0.287;// in kJ/kg-K
R=R*10^3;// in J/kg-K
Gamma = 1.4;
T = 100;// in degree C
T = T + 273;// in K
V = (R*T)/P;// in m^3
disp(V,"The volume of one kg of air in m^3 is : ")
C_v = 0.718;// in kJ/kg
T=T-273;// in degree C
InternalEnergy= C_v*T;// in kJ/kg
disp(InternalEnergy,"Internal energy of 1 kg air in kJ/kg is : ")
P1= P;// in bar
V1 = 1;// in m^3 (assumed)
V2 = 4 * V1;// in m^3
T1= T;// in degree C
T1=T1+273;// in K
P2 = (P * (V1)^Gamma)/((V2)^Gamma);// in N/m^2
disp(P2*10^-5,"The final pressure in bar is");
T2 = (P2*V2)/(P1*V1)*T1// in K
T2 = T2 - 273;// in degree 
disp(T2,"The final temperature in degree C is");
I_E = C_v * T2;// in kJ/kg
disp(I_E,"Internal energy in kJ/kg is");
