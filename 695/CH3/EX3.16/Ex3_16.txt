//Caption:Find the efficiency of transformer at full load and 75 percent of full load (a)at unity power factor (b)0.8 power factor
//Exa:3.16
clc;
clear;
close;
I_2=200;//in amperes
R_O2=0.008;//in ohms
x=0.75;
P_cu=x^2*I_2^2*R_O2;//in watts
P_i=190;//in watts
KVA=40;
P_o=40*1000;//in watts
Eff=P_o/(P_o+P_i+I_2^2*R_O2);
Eff_2=KVA*1000*0.8/(KVA*1000*0.8+P_i+I_2^2*R_O2);
disp(Eff*100,'(a)Efficiency of transformer at full load and at unity power factor (in %)=');
disp(Eff_2*100,'(b)Efficiency of transformer at full load and at 0.8 power factor (in %)=');
Eff_3=x*P_o/(x*P_o+P_i+P_cu);
Eff_4=x*P_o*0.8/(x*0.8*P_o+P_i+P_cu);
disp(Eff_3*100,'(a)Efficiency of transformer at 75% of load and at unity power factor (in %)=');
disp(Eff_4*100,'(b)Efficiency of transformer at 75% of load and at 0.8 power factor (in %)=');