//Caption:Find the no load speed
//Exa:2.45
clc;
clear;
close;
V=220;//in volts
R_a=2.5;//in ohms
N_1=859;//in rpm
I_ao=0;
I_a=8;//in amperes
E_b1=V-I_a*R_a;
E_bo=V-I_ao*R_a;
N_o=N_1*E_bo/E_b1;
disp(N_o,'No Load Speed (in RPM)=')