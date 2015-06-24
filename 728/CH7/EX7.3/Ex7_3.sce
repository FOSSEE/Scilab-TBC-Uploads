//Caption:Calculate the SWR of the waveguide
//Exa:7.3
clc;
clear;
close;
//Given:
P_i=2.5;//in mW
P_r=0.15;//in mW
p=sqrt(P_r/P_i);
S=(1+p)/(1-p);
disp(S,'Voltage standing wave ratio =');
