//Caption:Determine the KVA rating of auto transformer with additive and subtractive polarity also find the efficiency at full load and unity power factor
//Exa:3.13
clc;
clear;
close;
P=120*1000;//in watts
V1=2400;//in volts
V2=240;//in volts
I1=P/V1;//in amperes
I2=P/V2;//in amperes
KVA_1=V1*(I1+I2)/1000;
P_trans=V2*I2/1000;
P_cond_1=KVA_1-P_trans;
P_loss_1=((1/0.98)-1)^2*P_trans;
Eff_a=1-(P_loss_1/KVA_1)
disp(KVA_1,'KVA Rating of transformer with additive polarity (in KVA)=');
disp(Eff_a*100,'Efficiency of auto transformer with additive polarity (in %)=');
KVA_2=V1*(I2-I1)/1000;
P_trans=V2*I2/1000;
P_cond_2=KVA_2-P_trans;
P_loss=((1/0.98)-1)^2*P_trans;
Eff_s=1-(P_loss/KVA_2)
disp(KVA_2,'KVA Rating of transformer with subtractive polarity (in KVA)=');
disp(Eff_s*100,'Efficiency of auto transformer with subtractive polarity (in %)=');