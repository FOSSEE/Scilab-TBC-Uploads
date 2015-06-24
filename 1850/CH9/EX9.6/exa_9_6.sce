// Exa 9.6
clc;
clear;
close;
//given data
C=.05;// in micro F
C=C*10^-6;// in  F
R= 12;// in kohm
R=R*10^3;// in ohm
V_CC= 5;// in volt
V_BE= 0.7;// in volt
V_D1= V_BE;// in volt
I_C= (V_CC-V_BE)/R;// in A
f_o= (3*I_C)/(V_CC*C);// in Hz
f_o=f_o*10^-3;// in kHz
disp(f_o,"Frequency of free running ramp generator circuit in kHz");
