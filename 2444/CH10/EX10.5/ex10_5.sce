// Exa 10.5
clc;
clear;
close;
format('v',5)
// Given data
V_CC = 10;// in V
V_BB = -10;// in V
R_C2 = 1.2* 10^3;// in ohm
R_C1 = R_C2;// in ohm
R_B1 = 39 * 10^3;// in ohm
R_B2 = R_B1;// in ohm
R2 = 10* 10^3;// in ohm
R1 = R2;// in ohm
h_fe = 30;// unit less
V_CE2sat = 0;// in V
I1 = (V_CC-V_CE2sat)/R_C2;// in A
I2 = (V_CE2sat-V_BB)/(R1+R_B2);// in A
I_C2 = I1-I2;// in A
I_B2min = I_C2/h_fe;// in A
V_C2 = 0;// in V
V_B1 = V_C2 - (I2*R1);// in V
V_B2 = 0;// in V
V_C1 = 10;// in V
I3 = (V_CC-V_C1)/R_C1;// in A
V_BE2sat = 0;// in V
I4 = (V_C1-V_BE2sat)/R2;// in A
I_D = I3-I4;// in A
I5 = (V_BE2sat-V_BB)/R_B1;// in A
I_B2actual = I4-I5;// in A
I_B2actual= I_B2actual*10^3;// in mA
I_C1 = 0;// in mA
I_B1 = 0;// in mA
I_C2= I_C2*10^3;// in mA
disp(V_C1,"The value of V_C1 in V is");
disp(V_C2,"The value of V_C2 in V is");
disp(V_B1,"The value of V_B1 in V is");
disp(V_B2,"The value of V_B2 in V is");
disp(I_C1,"The value of I_C1 in mA is");
disp(I_C2,"The value of I_C2 in mA is");
disp(I_B1,"The value of I_B1 in mA is");
disp(I_B2actual,"The value of I_B2 in mA is");
