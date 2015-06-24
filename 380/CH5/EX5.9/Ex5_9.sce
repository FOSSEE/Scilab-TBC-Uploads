//Caption:Find maximum efficiency of generator
//Exa:5.9
clc;
clear;
close;
R_a=50*10^-3;//armature resistance (in ohms)
R_s=20*10^-3;//series field resistance
R_sh=40;//shunt field resistance
P_rot=2000;//rotational loss (in watts)
V=120;//voltage (in vollts)
I_f=V/R_sh;//shunt field current
//Refer toeqn 5.49
I_Lm=sqrt((P_rot+(R_a+R_s+R_sh)*(I_f^2))/(R_a+R_s));
P_o=I_Lm*V;//power output at max efficiency
P_cu=(((I_Lm^2)*(R_a+R_s))+((I_f^2)*R_sh));//total copper loss
P_d=P_o+P_cu;//Power developed at max efficiency
P_in=P_d+P_rot;
Eff=(P_o/P_in)*100;
disp(Eff,'Max efficiency of generator  (%)=');