//Exa:3.1
clc;
clear;
close;
V=120;//in Volts
V_dc=40.5;//in volts
V_rms=76.1;//in volts
R=10;//in ohms
I_dc=V_dc/R;//in Amperes
I_rms=V_rms/R;//in Amperes
P_dc=V_dc*I_dc;//in watts
P_ac=V_rms*I_rms;//in watts
Eff=P_dc/P_ac;//in per unit
disp(Eff,'(a) Efficiency (in Per Unit=)');
K_f=V_rms/V_dc;//in per unit
disp(K_f,'(b) Form Factor (in Per Unit=)');
Y=sqrt(K_f^2-1);
disp(Y,'(c) Ripple Factor (in Per Unit=)');
T_f=P_dc/(V*I_rms);
disp(T_f,'(d) Transformer Utilisation Factor=');
P_iv=sqrt(2)*V;
disp(P_iv,'(e) Peak Inverse Voltage (in volts)=')