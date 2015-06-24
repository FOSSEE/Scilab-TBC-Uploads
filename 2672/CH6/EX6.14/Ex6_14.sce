//Example 6_14
clc;
clear;
close;
format('v',7);
//given data : 
Vdc=100;//V
rf=20;//ohm
RL=500;//ohm
Idc=Vdc/RL;//A
Im=%pi*Idc;//A
Vm=Im*(RL+rf);//V
disp(Vm,"(a) The ac voltage required(V) : ");
format('v',5);
Eta=0.406/(1+rf/RL)*100;//%(Rectification Efficiency)
disp(Eta,"Rectification Efficiency(%) : ");
