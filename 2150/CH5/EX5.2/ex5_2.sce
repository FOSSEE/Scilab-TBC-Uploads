// Exa 5.2
clc;
clear;
close;
// Given data
R_C= 3.6*10^3;// in ohm
R_L= 10*10^3;// in ohm
r_c = (R_C*R_L)/(R_C+R_L);// in ohm
V_CC = 10;// in V
V_BE = 0.7;// in V
R_E = 1;// in kohm
R_E = R_E * 10^3;// in ohm
R1 = 10;// in kohm
R1= R1*10^3;// in ohm
R2 = 2.2;// in  kohm
R2= R2*10^3;// in ohm
V_B = (V_CC*R2)/(R1+R2);// in V
I_E = (V_B-V_BE)/R_E;// in A
V = 25*10^-3;// in V   // only value is given in the book 
r_e = V/I_E;// in ohm
A_V = round(r_c/r_e);
disp(A_V,"The voltage gain is");
V_in = 2;//in mV
V_out = A_V*V_in;// in mV
disp(V_out,"The output voltage in mV is"); 
