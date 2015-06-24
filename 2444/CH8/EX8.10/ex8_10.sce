// Exa 8.10
clc;
clear;
close;
format('v',5)
// Given data
V_CC = 12;// in V
r_e = 25;// in mV
r_e = r_e * 10^-3;// in V
R1 = 1.2;// in Mohm
R1 = R1 * 10^6;// in ohm
R3 = 1.2;// in Mohm
R3 = R3 * 10^6;// in ohm
R4 = 8;// in k ohm
R4 = R4 * 10^3;// in ohm
R5 = 24;// in k ohm
R5 = R5 * 10^3;// in ohm
Beta1 = 100;// unit less
Beta2 = 100;// unit less
I_B2 = V_CC/R3;// in A
I_C2 = Beta2*I_B2;// in A
I_E2 = I_C2;// in A
r_e2 = r_e/I_E2;// in ohm
Rac2 = (R4*R5)/(R4+R5);// in ohm
Av2 = -(Rac2/r_e2);//voltage gain of second stage 
disp(Av2,"The voltage gain of second stage is");
Rac1 = (R3*(Beta2*r_e2))/(R3+(Beta2*r_e2));// in  ohm
L = 1;// in H
f = 4;// in kHz
f = f * 10^3;// in Hz
X_L = 2*%pi*f*L;// in ohm
r_e1 = r_e2;// in ohm
Av1 = round(-Rac1/r_e1 );// voltage gain of first stage
disp(Av1,"The voltage gain of first stage at 4 kHz is");
Av = Av1*Av2;// overall voltage gain
Av = 20*log10(Av);// in dB
disp(Av,"The overall voltage gain in dB is");
