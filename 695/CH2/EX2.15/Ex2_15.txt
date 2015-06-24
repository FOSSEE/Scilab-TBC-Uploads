//Caption:Find the (a)Cu-loss (b)iron and friction loss (c) torque
//Exa:2.15
clc;
clear;
close;
P_o=25000;//output power in watts
V_t=250;//in volts
R_se=0.05;//series resistance in ohms
R_a=0.04;//armature winding resistance in ohms
R_f=50;//shunt feild winding resistance in ohms
Eff=0.89;//efficiency
N=1000;//speed in rpm
I=P_o/V_t;//in amperes
I_f=V_t/R_f;//in amperes
I_a=I+I_f;
P_cu=R_a*I_a^2+R_se*I_a^2+R_f*I_f^2;//copper loss in watts
disp(P_cu,'(a) Cu-loss (in watts)=');
P_i=P_o/Eff;//input power in watts
P_L=P_i-P_o;//total losses in watts
P_fric=P_L-P_cu;
disp(P_fric,'(b) Iron and friction loss (in watts)=');
T=P_i*60/(2*%pi*N);
disp(T,'(c) Torque (in N-m)=')