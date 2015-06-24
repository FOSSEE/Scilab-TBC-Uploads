//Exa:1.44
clc;
clear;
close;
E=240;//in volts
R=15;//in ohms
N=1500;//in rpm
P=E^2/R;//in Watts
T_b=P*60/(2*%pi*N);//in N-m
T_e=T_b;
w_1=2*%pi*N/60;//in rad/sec
K=T_e/w_1;
J=20;//kg-m^2
t=(J/K)*log(w_1/62.832);
disp(t,'Time taken to bring motor from 1500 rpm to 600 rpm (in seconds)=');
T_f=1.5*9.81;//in N-m
t_o=(J/K)*log((T_f+T_e)/(T_f+(T_e*600/1500)));
disp(t_o,'Time taken for fall of speed if there exist frictional torque (in seconds)=');