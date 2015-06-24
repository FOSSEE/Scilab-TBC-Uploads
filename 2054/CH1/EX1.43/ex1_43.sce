//Exa:1.43
clc;
clear;
close;
P_o=37.5*1000;//in Watts
N=750;//in rpm
Eff=0.9;//Efficiency
V_L=400;//in Volts
pf=0.85;//Power Factor
R_b=2.5;//in ohms
T_f=P_o*60/(2*%pi*N);//in N-m
I_L=P_o/(sqrt(3)*V_L*pf*Eff);//in Amperes
I_b=V_L/(sqrt(3)*R_b);//in Amperes
T_E=T_f*I_b/I_L;//in N-m
T_i_total=T_f+T_E;//in N-m
w=2*%pi*N/60;//in rad/sec
K=T_E/w;
J=20;//kg-m^2
t=(J/K)*log((T_f+K*w)/T_f);
disp(t,'Time taken (in Seconds)=');
n=(1/(2*%pi*K))*(((J/K)*(T_f+K*w)*(1-exp(-K*t/J)))-T_f*t);
disp(n,'Number of Revolutions Made=')