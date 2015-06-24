// Exa 2.18
clc;
clear;
close;
format('v',5)
// Given data
R1 = 3;// in ohm
R2 = 9;// in ohm
R3 = 6;// in ohm
V1 = 120;// in V
V2 = 60;// in V
R = (R3*R2)/(R3+R2);// in ohm
R_T = R+R1;// in ohm
I_T = V1/R_T;// in A
I1 = (R2/(R2+R3)) * I_T;// in A
R_T = 2 + R2;// in  ohm
I_T = V2/R_T;// in A
I2 = (R1/(R1+R3)) * I_T;// in A
// current through 6 ohm resistor 
I = I1-I2;// in A
disp(I,"The current through 6 ohm resistor in A is");
