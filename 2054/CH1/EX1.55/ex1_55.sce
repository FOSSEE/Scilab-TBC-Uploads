//Exa:1.55
clc;
clear;
close;
theta_1=30;//in degree celcius
theta_2=40;//in degree celcius
t_1=1;//in hours
t_2=2;//in hours
x=(theta_2/theta_1)-1;
theta_F=theta_1/(1-x);//in degree celcius
theta_f=50/(1-x);//in degree celcius
P_L=25;//in KWs
P=P_L*sqrt(theta_f/theta_F);
disp(P,'Maximum Overload (in KWs)=')