// Exa 3.22                 (Miss printed as example 3.19)
clc;
clear;
close;
format('v',6)
// Given data
S = 10;
bita = 50;
h_fe = bita;
V_CC= 20;// in V
V_CE = 10;// in V
R_C = 2;// in k ohm
I_C = 4;// in mA
I_B =I_C/bita;// in mA
// Applying KVL to collector loop, V_CC -I_C*R_C - V_CE - I_E*R_E = 0 or
R_E = (V_CC -I_C*R_C - V_CE)/(I_C+I_B);// in k ohm            (on putting I_E= I_C+I_B)
R_E= round(R_E*10^3);// in ohm
disp(R_E,"The value of R_E in ohm is");
// Formula S = (1+bita)*( (1 + (R_B/R_E))/( (1+bita) + (R_B/R_E) ) ) or
R_B= (1+bita)*(1-S)*R_E/(S-1-bita);// in ohm
// But R_B= R1 || R2= R1*R2/(R1+R2) => R2/(R1+R2)= R_B/R1           (i)
// Calculation of R1 and R2 : 
V_BE= 0.2;// in V
// Applying KVL to input loop, 
V_R2= V_BE+(I_C+I_B)*10^-3*R_E;// in V
// But V_R2= R2*V_CC/(R1+R2) =>  R2/(R1+R2)= V_R2/V_CC          (ii)
// On comparing eq (i) and (ii)
R1= R_B*V_CC/V_R2;// in ohm
R2= R1*V_R2/(V_CC-V_R2);// in ohm
R1= R1*10^-3;// in k ohm
R2= R2*10^-3;// in k ohm
disp(R1,"The value of R1 in k ohm is : ")
disp(R2,"The value of R2 in k ohm is : ")
// Effect of Reducing S or 3 : 
S=3;
// Formula S = (1+bita)*( (1 + (R_B/R_E))/( (1+bita) + (R_B/R_E) ) ) or
R_B= (1+bita)*(1-S)*R_E/(S-1-bita);// in ohm
R_B= R_B*10^-3;// in k ohm
disp(R_B,"When S<=3, the value of R_B in k ohm is : ")
disp("Thus S is reduced below 3 at the cost of reduction of it''s input impedance")
