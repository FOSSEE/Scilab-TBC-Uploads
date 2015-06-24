//Caption:Calculate the core loss and copper loss and also find the value of load current at which max efficiency will be attained
//Exa:3.23
clc;
clear;
close;
KVA=100;
V2=11000;//in volts
x1=1;
x2=0.5;
pf1=0.8;
pf2=1;
Eff_1=0.985;
Eff_2=0.99;
P_cu=(KVA*1000*x1*pf1*((1/Eff_1)-1)-x2*KVA*1000*((1/Eff_2)-1))*(4/3);// in watts
P_i=1218-P_cu;// in watts
I_fl=KVA*1000/V2;
I_2=I_fl*sqrt(P_i/P_cu);
disp(P_cu,'Copper loss (in watts)=');
disp(P_i,'Core loss (in watts)=');
disp(I_2,'Load current (in amperes)=')