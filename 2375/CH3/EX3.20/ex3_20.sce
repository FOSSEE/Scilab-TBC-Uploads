// Exa 3.20                 (Miss printed as example 3.17)
clc;
clear;
close;
format('v',7)
// Given data
V_E = 1;// in V
V_BE = 0.7;// in V
R_C = 1;// in k ohm
Beta = 180;
V_CC = 12;// in V
V_CEQ = 6;// in V
// Applying KVL into collector circuit, V _CC - I_C*R_C - V_CEQ = 0 or
I_C = (V_CC-V_CEQ)/R_C;// in mA
I_B = I_C/Beta;// in mA
// Applying KVL into base circuit, V_CC - I_B*R_B - V_BE = 0 or
R_B = (V_CC-V_BE)/I_B;// in k ohm
disp(R_B,"The value of R_B in k ohm is");
//Applying KVL to collector circuit, V_CC - I_C*R_C - V_CE - V_E = 0 or
I_C = (V_CC-V_CEQ-V_E)/R_C;// in mA
I_B = I_C/Beta;// in mA
I_E = I_C+I_B;// in mA
R_E = V_E/(I_E);// in k ohm
R_E= round(R_E*10^3);// in ohm
disp(R_E,"The value of R_E in ohm is");
I_R2 = 10*I_B;// in mA
V_BE= 0.6;// in V
//R2 =V_B/I_R2 = (V_E+V_BE)/I_R2;
R2 = (V_E+V_BE)/I_R2;// in k ohm 
R2= R2*10^3;// in ohm
disp(R2,"The value of R2 in ohm is");
I_R1 = I_R2 + I_B;// in mA
//R1 = V_R1/I_R1 = (V_CC-V_B)/I_R1;
V_B = V_E+V_BE;// in V
R1 = (V_CC-V_B)/I_R1;// in k ohm
disp(R1,"The value of R1 in k ohm is");
