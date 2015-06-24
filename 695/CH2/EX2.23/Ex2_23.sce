//Caption:Determine the (a)total torque(b)useful torque(c)useful flux per pole(d)rotational losses(e)efficiency
//Exa:2.23
clc;
clear;
close;
P=4;//no of poles
Z=560;//no of conductors
A=2;
V=250;//in volts
P_o=10*10^3;//in watts
R_a=0.2;//in ohms
I_f=1;//in amperes
I_a=60;//in amperes
N=1000;//in rpm
V_b=1*2//in volts
E=V-(I_a*R_a)-V_b;//in volts
T=60*E*I_a/(2*%pi*N);//in Newton-meter
disp(T,'(a) Total torque (in Newton-meter)=');
T_useful=P_o*60/(2*%pi*N);
disp(T_useful,'(b) Useful torque (in Newton-meter)=');
Phy=60*E*A/(N*P*Z);
disp(Phy,'(c) Useful flux per pole (in Weber)=');
P_d=(V*I_a)-((I_a^2)*R_a)-(V_b*I_a);//in Watts
P_rot=P_d-P_o;
disp(P_rot,'(d) Rotational losses (in Watts)=');
P_i=V*(I_a+I_f);//in Watts
Eff=P_o*100/P_i;
disp(Eff,'(e) Efficiency (in %)=');