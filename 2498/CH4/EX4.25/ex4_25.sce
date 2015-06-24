// Exa 4.25
format('v',7)
clc;
clear;
close;
// Given data
I_C =5 * 10^-3;// in A
V_CE = 8;// in V
V_E = 6;// in V
S = 10;
h_fc = 200;
Beta = h_fc;
V_CC = 20;// in V
V_BE = 0.6;// in V
I_B =I_C/Beta;// in A
I_E = I_C+I_B;// in A
// I_C*R_C = V_CC - V_CE - V_E;
R_C = (V_CC - V_CE - V_E)/I_C;// in ohm
R_C = R_C * 10^-3;// in k ohm
disp(R_C,"The value of R_C in k ohm is");
R_C = R_C * 10^3;// in ohm
//Voltage at point E, V_E =I_E*R_E;
R_E = V_E/I_E;// in ohm
R_E = R_E * 10^-3;// in k ohm
disp(R_E,"The value of R_E in k ohm is");
R_E = R_E * 10^3;// in ohm
// S = ((Beta+1)*(R_B+R_E))/( R_B+(R_E*(1+Beta)) ), where R_B= R1*R2/(R1+R2)
R_B = ((R_E*(1+Beta))-(S*R_E*(1+Beta)))/( S-(1+Beta) );// in ohm
// Vth = V_CC*(R2/(R1+R2)) = V_CC*(R_B/R1)
// Applying KVL we get, Vth= I_B*R_B+V_BE+V_E or
Vth = (I_B*R_B) + V_BE + V_E;// in V
R1 =(V_CC/Vth)*R_B;// in ohm
R1= R1*10^-3;// in k ohm
disp(R1,"The value of R1 in k ohm is");
R2 = (R1*Vth)/(V_CC-Vth);// in k ohm
disp(R2,"The value of R2 in k ohm is");
