//Caption:Find the (a)iron loss (b)copper loss at full load (c)Load KVA at which maximum efficiency occurs (d)maximum efficiency of transformer at 0.8pf lagging
//Exa:3.19
clc;
clear;
close;
KVA=150;
pf=0.8;
Eff=0.96;
P_o=KVA*1000*pf;//in watts
P_cu=P_o*((1/Eff)-1)*(1-0.5)*4/3;
P_i=4999.9-P_cu;
disp(P_i,'(a)Iron Loss (in watts)=');
disp(P_cu,'(b)Copper Loss at full load (in watts)=');
x=sqrt(P_i/P_cu);
disp(x*KVA,'(c)Load KVA at which maximum efficiency occurs (in KVA)='); 
Eff_max=x*KVA*1000*0.8/(x*KVA*1000*0.8+2*P_i);
disp(Eff_max*100,'(d)maximum efficiency of transformer at 0.8pf lagging(in %)=')