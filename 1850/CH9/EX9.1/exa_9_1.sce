// Exa 9.1
clc;
clear;
close;
//given data
C=.01;// in micro F
C=C*10^-6;// in  F
R_A= 2;// in kohm
R_A=R_A*10^3;// in ohm
R_B= 100;// in kohm
R_B=R_B*10^3;// in ohm
T_High= 0.693*(R_A+R_B)*C;// in seconds
T_Low= 0.693*R_B*C;// in seconds
T=T_High+T_Low;// in seconds
f=1/T;// in Hz
disp(f,"Frequency of oscillations in Hz");
DutyCycle= T_High/T*100;// in percent
disp(DutyCycle,"Duty cycle in percentage");
