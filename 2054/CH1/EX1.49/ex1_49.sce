//Exa:1.49
clc;
clear;
close;
t=60;//in minutes
theta_F=20;//in degree celcius
P_L1=2.5625;//Total losses at P KW
P_L2=7.25;//Total losses at 2P KW
theta_f=theta_F*P_L2/P_L1;//in degree celcius
t_o=t*log(1/(1-(theta_F/theta_f)));
disp(t_o,'Time of operation (in minutes)=');