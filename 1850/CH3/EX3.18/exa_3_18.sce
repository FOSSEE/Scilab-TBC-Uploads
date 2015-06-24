// Exa 3.18
clc;
clear;
close;
// Given data
R_f=10;// in k ohm
R1=1;// in k ohm
V_d= 5;// in mV
v_cm= 2;// in mV
A_d= -R_f/R1;
Vout= A_d*V_d;// in mV
disp(abs(Vout),"Output voltage in mV : ")
CMRR_dB= 90;// in dB
CMRR= 10^(CMRR_dB/20);
A_cm= abs(A_d)/CMRR
Mag= A_cm*v_cm;// magnitude of the induced 60 Hz noise at the output in mV
disp(Mag*10^3," magnitude of the induced 60 Hz noise at the output in micro volt :")
