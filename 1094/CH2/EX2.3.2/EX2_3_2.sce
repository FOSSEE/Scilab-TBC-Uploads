//Exa:2.3.2
clc;
clear;
close;
V_L=400 //supply voltage(in volts)
W_1=750 //power (in W)
W_2=250 //power (in W)
P_i=W_1+W_2
disp(P_i,'input power (in W)=')
pf=cosd(atand(sqrt(3)*(W_1-W_2)/(W_1+W_2)))
disp(pf,'power factor=')
I_L=P_i/(sqrt(3)*V_L*pf)
disp(I_L,'line current(in A)=')