//Caption:Find (a) the breakdown slip and the breakdown torque (b) starting torque and the value of external resistance
//Exa:9.6
clc;
clear;
close;
f=60;//in Hertzs
P=8;//no. of poles
R_2=0.02;//in ohms
X_2=0.08;//in ohms
s_b=R_2/X_2;//breakdown slip 
disp(s_b,'(a) breakdown slip=');
N_s=120*f/P;//synchronous speed (in rpm)
w_s=N_s*2*%pi/60;
N_m=(1-s_b)*N_s;//motor speed (in rpm)
V_1=120;//in V
T_dm=(3*V_1^2)*s_b/(2*w_s)*R_2;
disp(T_dm,'Breakdown torque (in Newton-meter)=');
T_s=2*1*s_b*T_dm/(1+s_b^2);
disp(T_s,'(b) Starting Torque (in Newton-meter)=');
disp(T_s/T_dm,'Starting torque is =');
disp("times the max torque");
s_bn=(-(-2.5)-sqrt((-2.5)^2-4*1*1))/2;//new breakdown slip
R_2n=s_bn*X_2;
disp(R_2n,'rotor resistance (in ohms)=');