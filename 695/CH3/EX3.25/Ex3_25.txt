//Caption:Calculate the efficiency of the transformer on full load and half load at unity power factor
//Exa:3.25
clc;
clear;
close;
KVA=100;
P_i=1300;//in watts
P_cu=1200;//in watts
pf=1;
Eff_fl=KVA*1000*pf/(KVA*1000*pf+P_i+P_cu);
disp(Eff_fl*100,'Efficiency of transformer at full load (in %)=');
Eff_hl=KVA*1000*0.5*pf/(KVA*0.5*1000*pf+P_i+0.25*P_cu);
disp(Eff_hl*100,'Efficiency of transformer at half load (in %)=');