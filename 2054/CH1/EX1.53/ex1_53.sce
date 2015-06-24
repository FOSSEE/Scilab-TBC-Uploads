//Exa:1.53
clc;
clear;
P_cont=100;//in KWs
Eff=0.8;//Efficiency
T_1=50;//in minutes
T_2=70;//in minutes
t_1=10;//in minutes
t_2=10;//in minutes
r=(1-exp(-((t_1/T_1)+(t_2/T_2))))/(1-exp(-t_1/T_1));// r=theta_f/theta_F
P_L=2.5625;//Losses at 100 KW Load 
P_L1=Eff*P_cont;//in Kws
P=sqrt(((P_L*r)-1)*P_L1^2);
disp(P,'Value of Load in KW during load period=');