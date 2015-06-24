//Caption:Calculate the SWR of the main waveguide
//Exa:7.2
clc;
clear;
close;
//Given:
P_i=300;//in mW
P_r=10;//in mW
p=sqrt(P_r/P_i);
S=(1+p)/(1-p);
disp(S,'Voltage standing wave ratio =');
