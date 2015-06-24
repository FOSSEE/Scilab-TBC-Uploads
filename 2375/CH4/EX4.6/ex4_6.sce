// Exa 4.6
clc;
clear;
close;
format('v',6)
// Given data
h_fe = 150;
Beta_dc = h_fe;
h_ie = 1*10^3;// in ohm
h_re = 0;
h_oe = 0;
V_CC = 18;// in V
V_BE= 0.7;// in V
R1 = 100*10^3;// in ohm
R2 = 50*10^3;// in ohm
R_C = 1*10^3;// in ohm
R_E = 0.5*10^3;// in ohm
V_Th = (V_CC/(R1+R2))*R2;// in V
R_Th =(R1*R2)/(R1+R2);// in ohm
// V_Th - I_B*R_Th - V_BE - (1+Beta)*-I_B*R_E = 0;
I_B = (V_Th-V_BE)/( R_Th + (1+Beta_dc)*R_E);// in A
//I_C = I_CQ = Beta*I_B;
I_C = Beta_dc*I_B;// in A
I_CQ = I_C;// in A
I_CQ= I_CQ*10^3;// in mA
disp(I_CQ,"The value of I_CQ in mA is");
I_E = (1+Beta_dc)*I_B;// in mA
// V_CC - I_C*R_C - V_CE - I_E*R_E = 0;
V_CE = V_CC - (I_C*R_C) - (I_E*R_E);// in V
disp(V_CE,"The value of V_CE in V is");
R_L =R_C;// in ohm
Ai = -h_fe/(1+(h_oe*R_L));
disp(Ai,"The current gain is ");
Zi = h_ie + h_re*Ai*R_L;// in ohm
Zi= Zi*10^-3;// in k ohm
disp(Zi,"The input impedance in k ohm is");
Zi= Zi*10^3;// in ohm
A_V = Ai*(R_L/Zi);
disp(A_V,"The voltage gain is");
R_B= (R1*R2)/(R1+R2);// in ohm
Z_IS =(Zi*R_B)/(Zi+R_B);// in ohm
Z_IS= Z_IS*10^-3;// in kohm
disp(Z_IS,"The overall input impedance in k ohm is");
Z_IS= Z_IS*10^3;// in ohm
A_VS =A_V*(Z_IS/Z_IS);
disp(A_VS,"The overall voltage gain is");
A_IS =Ai * (R_B/(R_B+Zi));
disp(A_IS,"The overall current gain is");
