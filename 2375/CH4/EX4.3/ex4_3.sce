// Exa 4.3
clc;
clear;
close;
format('v',6)
// Given data
h_ic = 2;// in k ohm
h_fc = -51;
h_oc = 25*10^-6;// in ohm
h_rc= 1;
V_CC = 20;// in V
R1 = 10;// in k ohm
R2 = 10;// in k ohm
R_S = 1;// in k ohm
R_E = 5;// in k ohm
R_B= 5;// in k ohm
R_L= 5;// in k ohm
// (i) Current Gain
Ai = (-h_fc)/(1+h_oc*R_E*10^3);
disp(Ai,"The current gain is");
// (ii) Input impedance
Zi = h_ic*10^3 + h_rc*Ai*R_E*10^3;// in ohm
Zi = Zi * 10^-3;// in k ohm
disp(Zi,"The input impedance in k ohm is");
// (iii) Voltage Gain
A_V = (Ai*R_L*10^3)/(Zi*10^3);
A_V = 1;// (approx)
disp(A_V,"The voltage gain is");
// (iv) Overall Input Impedance
Z_IS = (R_B*Zi)/(R_B+Zi);// in k ohm
disp(Z_IS,"The overall input impedance in k ohm is");
// (v) Overall voltage gain
A_VS = (A_V*Zi)/(Zi+R_S); 
disp(A_VS,"The overall voltage gain is");
// (vi) Overall current gain
A_IS =Ai*(R_B/(R_B+Zi));
disp(A_IS,"The overall current gain is");
// (vii) Output impedance
RdasS = (R_S*R_B)/(R_S+R_B);// in k ohm
Yo = h_oc - ( (h_fc*h_rc)/(h_ic*10^3+RdasS*10^3) );// in mho 
Zo = 1/Yo;// in ohm
disp(Zo,"The output impedance in ohm is");
