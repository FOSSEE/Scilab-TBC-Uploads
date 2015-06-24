//Caption:Calculate (a)Efficiency at full load and at unity power factor (b)Efficiency at half load and 0.8 power factor (c)Efficiency at 75 percent of load and 0.7 power factor (d)load KVA at which maximum efficiency will occcur (e)maximum efficiency at 0.85 power factor
//Exa:3.22
clc;
clear;
close;
KVA=100;
P_cu=1200;//in watts
P_i=960;//in watts
x1=1;
pf1=1;
P_o_1=x1*KVA*pf1*1000;
Eff_1=P_o_1/(P_o_1+P_i+x1^2*P_cu);
disp(Eff_1*100,'(a)Efficiency at full load and at unity power factor (in %)=');
x2=0.5;
pf2=0.8;
P_o_2=x2*KVA*1000*pf2;
Eff_2=P_o_2/(P_o_2+P_i+x2^2*P_cu);
disp(Eff_2*100,'(b)Efficiency at half load and at 0.8 power factor (in %)=');
x3=0.75;
pf3=0.7;
P_o_3=x3*KVA*1000*pf3;
Eff_3=P_o_3/(P_o_3+P_i+x3^2*P_cu);
disp(Eff_3*100,'(c) Efficiency at 75 percent of load and 0.7 power factor(in %)=');
KVA_max=KVA*sqrt(P_i/P_cu);
disp(KVA_max,'(d)load KVA at which maximum efficiency will occcur (in KVA)=');
Eff_max=KVA_max*1000*0.85/(KVA_max*1000*0.85+2*P_i);
disp(Eff_max*100,'(e)maximum efficiency at 0.85 power factor(in %)=')