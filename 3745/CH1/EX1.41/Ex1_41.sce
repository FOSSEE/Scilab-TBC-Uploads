// Ex 41 Page 385

clc;clear;close;
// Given
KVA=15;//kVA
pf=1;
eff=98/100;//efficiency

L1=2;//kW
pf1=0.5;//lagging
t1=12;//hours
L2=12;//kW
pf2=0.8;//lagging
t2=6;//hours
L3=18;//kW
pf3=0.9;//lagging
t3=6;//hours

Po=KVA*pf;//kW
Pin=Po/eff;//kW
Losses=Pin-Po;//kW
Cu_loss=Losses/2;//kW
I_loss=Losses/2;//kW

KVA1=L1/pf1;//kVA
KVA2=L2/pf2;//kVA
KVA3=L3/pf3;//kVA
Cu_loss1=Cu_loss*(KVA1/KVA2)**2;//kW
Cu_loss2=Cu_loss*(KVA2/KVA2)**2;//kW
Cu_loss3=Cu_loss*(KVA3/KVA2)**2;//kW

Cu_loss_t1=Cu_loss1*t1;//kW
Cu_loss_t2=Cu_loss2*t2;//kW
Cu_loss_t3=Cu_loss3*t3;//kW
Cu_loss_total=Cu_loss_t1+Cu_loss_t2+Cu_loss_t3;//kW
I_loss24=I_loss*24;//Wh

Po24=L1*t1+L2*t2+L3*t3;//kWh
Pi24=Po24+Cu_loss_total+I_loss24;//kWh
eff_allday=Po24/Pi24*100;//%
printf("All day efficiency = %.f percent",eff_allday)
