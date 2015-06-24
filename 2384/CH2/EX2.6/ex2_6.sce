// Exa 2.6
clc;
clear;
close;
format('v',5)
// Given data
R1 = 2;// in ohm
R2 = 3;// in ohm
R3 = 1;// in ohm
R4= 2;// in ohm
V1 = 4.2;// in V
V2 = 3.5;// in V
R_T =R1+R3+R2*R4/(R2+R4);// in ohm
I_T = V1/R_T;// in A
I1 = (R1/(R1+R2))*I_T;// in A
R = R1+R3;// in ohm
R_desh = (R*R2)/(R+R2);// in ohm
R_T = R_desh+R1;// in ohm
I_T = V2/R_T;// in A
I2 = (R2/(R2+R))*I_T;// in A
// current in the branch AB 
I = I2-I1;// in A
disp(I,"The current in the branch AB of the circuit in A is");
