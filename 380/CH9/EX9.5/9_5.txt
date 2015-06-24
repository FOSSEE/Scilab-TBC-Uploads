//Caption:Find (a) the breakdown slip (b) the breakdown torque (c) power developed by the motor
//Exa:9.5
clc;
clear;
close;
//Refer to data of Exa9.4
R_1=0.1;// in ohms
R_2=0.2;// in ohms
X_1=0.15;// in ohms
X_2=0.25;// in ohms
w_s=125.66;//rad/sec
V_1=120;//in Volts
s_b=R_2/sqrt(R_1^2+(X_1+X_2)^2);
disp(s_b,'(a) Breakdown slip=');
T_dm=(3*V_1^2)/(2*w_s*(R_1+sqrt(R_1^2+(X_1+X_2)^2)));
disp(T_dm,'(b) Breakdown Torque (in Newton-meter)=');
P_d=T_dm*(1-s_b)*w_s;
disp(P_d/1000,'(c)  power developed by the motor (in Kilo-Watts)=');