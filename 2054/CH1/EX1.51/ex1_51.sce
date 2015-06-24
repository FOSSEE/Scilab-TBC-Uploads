//Exa:1.51
clc;
clear;
close;
Eff=0.8;//Efficiency
P1=400;//in watts
t1=60;//in minutes
t2=15;//in minutes
P=sqrt((((2.5625/(1-exp(-t2/t1)))-1)^(-1))*(P1/Eff)^2);
disp(P,'Continuous Rating of Motor (in Watts)=');