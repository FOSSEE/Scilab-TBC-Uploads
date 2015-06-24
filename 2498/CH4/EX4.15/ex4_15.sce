// Exa 4.15
clc;
clear;
close;
format('v',5)
// Given data
S = 12;
V_CC = 16;// in V
R_C = 1.5 * 10^3;// in ohm
V_CE = 8;// in V
V_BE= 0.2;// in V
I_C = 4;// in mA
I_C = I_C * 10^-3;// in A
Beta = 50;
// Vth = V_CC*(R2/(R1+R2)) and Rth = (R1*R2)/(R1+R2);
//Applying KVL to input side, Vth - I_B*Rth - V_BE - I_E*R_E = 0            (i)
I_B = I_C/Beta;// in A
I_E = I_B*(1+Beta);// in A
// Applying KVL to output section,
R_E = (V_CC - (I_C*R_C) - V_CE)/I_E;// in ohm
//S = ((Rth+R3)*(1+Beta))/(Rth + ((1+Beta)*R_E))                (ii)
Rth= R_E*(1+Beta-S-Beta*S)/(S-1-Beta);// in ohm
V_BN= V_BE+I_E*R_E;//in V
Vth= V_BN+I_B*Rth;// in V
// Vth= V_CC*R2/(R1+R2) and Rth= R2*R1/(R1+R2), So Vth= V_CC*Rth/R1
R1= V_CC*Rth/Vth;// in ohm
R2= R1*Rth/(R1-Rth);// in ohm
R1= round(R1*10^-3);// in k ohm
R2= R2*10^-3;// in k ohm
R_E= R_E*10^-3;// in k ohm
disp(R1,"The value of R1 in kΩ is : ")
disp(R2,"The value of R2 in kΩ is : ")
disp(R_E,"The value of R_E in kΩ is : ")



