//Caption:Calculate the secondary current at which max efficiency will occur and also calculate the max efficiency at 0.8pf lagging
//Exa:3.18
clc;
clear;
close;
a=1000/200;
R_1=0.25;//in ohms
R_2=0.018;//in ohms
R_O2=R_2+R_1/a^2;
P_i=240;//in watts
I_2=sqrt(P_i/R_2);
disp(I_2,'The secondary current at which max efficiency will occur (in Amperes)=');
P_o=200*I_2*0.8;//in watts
P_t=2*P_i;//in watts
Eff=P_o/(P_o+P_t);
disp(Eff*100,'Max efficiency at 0.8pf lagging(in %)=')