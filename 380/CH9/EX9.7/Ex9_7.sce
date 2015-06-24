//Caption:Find (a) the torque range (b) current range
//Exa:9.7
clc;
clear;
close;
f=60;//in Hertzs
P=4;//no. of poles
V_1=230;//in volts
I_2=4.5;//rotor current (in Amperes)
P_d=2*746;//in watts
N_m=1710;//speed of motor in (rpm)
N_s=120*f/P;//Synchronous speed (in rpm)
s=(N_s-N_m)/N_s;//slip
w_m=2*%pi*N_m/60;//in rad/sec
T_d=P_d/w_m;//torque developed (in Newton-meter)
T_dL=T_d*(0.9*230/230)^2;//in Newton-meter
I_2L=I_2*(0.9*230/230);//in Amperes
T_dH=8.33*1.1^2;//in Newton-meter
I_2H=I_2*1.1;//in Amperes
disp("(a) Torque range (in Newton-meter) is :-");
disp(T_dL,'minimum value=');
disp(T_dH,'maximum value=');
disp("(b) Current range (in Amperes) is :-");
disp(I_2L,'minimum value=');
disp(I_2H,'maximum value=');