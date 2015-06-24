//Caption:Determine the efficiency and power input
//Exa:2.38
clc;
clear;
close;
P_out=20000;//in watts
P_in=23000;//in watts
V=250;//in volts
R_f=125;//in ohms
R_a=0.2;//in ohms
I_L=P_in/V;//in amperes
I_f=V/R_f;//in amperes
I_a1=I_L-I_f;//in amperes
P_cu=(I_a1^2)*R_a;
P_fcu=V*I_f;
P_tcu=P_cu+P_fcu;
P_fric=P_in-P_out-P_tcu;
P_o=12000;//in watts
P_m=P_o+P_fric
I_a2=53.85;
P_tcu2=((I_a2^2)*R_a)+250;
P_in_2=P_m+P_tcu2;
disp(P_in_2,'Power input (in watts)=');
Eff=P_o*100/P_in_2;
disp(Eff,'Efficiency (in %)=')