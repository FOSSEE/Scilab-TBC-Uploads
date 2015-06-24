//Caption:Find the percentage reduction in speed
//Exa:2.13
clc;
clear;
close;
P1=200*10^3;//initial load in watts
P2=125*10^3;//final load in watts
V_t=250;//in volts
V_b=2;//total brush drop in volts
P=6;//no. of poles
R_a=0.015;//armature winding resistance in ohms
I_g1=P1/V_t;//in amperes
I_a1=I_g1;//in amperes
E_g1=V_t+I_a1*R_a+V_b;//in volts
I_g2=P2/V_t;//in amperes
I_a2=I_g2;//in amperes
E_g2=V_t+I_a2*R_a+V_b;//in volts
//since E_g is directly proportional to N
//therefore,E_g1/E_g2=N_1/N_2
r=E_g2/E_g1;
reduction=(1-r)*100;
disp(reduction,'Percentage reduction in speed (%)=') 