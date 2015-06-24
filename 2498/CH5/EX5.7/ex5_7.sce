// Exa 5.7
clc;
clear;
close;
format('v',6)
// Given data
h_ic = 1.1;// in  k ohm
h_ic = h_ic * 10^3;// in ohm
h_rc = 1;
h_fc = -51;
h_oc = 25;// in µA/V
h_oc = h_oc * 10^-6;// in A/V
R_L = 10;// in k ohm
R_L = R_L * 10^3;// in ohm
R_S = R_L;// in ohm
// The current gain,
Ai = -h_fc/(1+(h_oc*R_L));
disp(Ai,"The value of Ai is");
// The value of Ri 
Ri = h_ic+(h_rc*Ai*R_L);// in ohm
Ri= Ri*10^-3;// in k ohm
disp(Ri,"The value of Ri in k ohm is");
Ri= Ri*10^3;// in ohm
// The value of A_V 
A_V = (Ai*R_L)/Ri;
disp(A_V,"The value of A_V is");
Gamma_o = h_oc - ( (h_fc*h_rc)/(h_ic+R_S) );// in mho
// The value of Ro 
Ro = round(1/Gamma_o);// in ohm
disp(Ro,"The value of Ro in ohm is");
A_VS = (A_V*Ri)/(Ri+R_S);
disp(A_VS,"The value of A_VS is");
