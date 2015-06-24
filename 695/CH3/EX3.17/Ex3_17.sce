//Caption:Determine the (a)Load at which max efficiency occurs and value of max efficiency (b)New core loss and Cu loss
//Exa:3.17
clc;
clear;
close;
KVA=20;
P_i=250;//in watts
P_cu=500;//in watts
x=sqrt(P_i/P_cu);
disp(x*100,'(a)Max efficiency will occur at');
disp('Percent of full load');
P_o=x*KVA*1000;
Eff=P_o/(P_o+P_i+P_i);
disp(Eff*100,'Maximum Efficiency (in %)=');
P_cu_n=(P_i+P_cu)/(0.85^2+1);
P_i_n=P_i+P_cu-P_cu_n;
disp(P_i_n,'(b)Core Loss (in watts)=');
disp(P_cu_n,'   Copper Loss (in watts)=')