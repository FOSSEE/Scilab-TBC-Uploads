//Caption:Calculate the value of iron loss and copper loss which will give max efficiency and also the max efficiency
//Exa:3.29
clc;
clear;
close;
KVA=25;
P_iron=350;//in watts
//For max efficiency P_iron=P_cu
P_cu=P_iron;
disp(P_iron,'Iron loss (in watts)=');
disp(P_cu,'Copper Loss (in watts)=');
Eff=KVA*1000/(KVA*1000+P_iron+P_cu);
disp(Eff*100,'Maximum Efficiency (in %)=');