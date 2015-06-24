//problem 2.16
clc;
clear;
close;
//given data :
format('v',6);
Eff=0.8;//unitless
Load=20;//in HP
Load=Load*735.5;//in watts
//IronLoss=K;//assumed
//MechLoss=K/3;
//RotorCuLoss=StatorCuLoss=IronLoss=K;
//TotLoss=K+K+K+K/3=10*K/3;//
Input=Load/Eff;//in watts
TotLoss=Input-Load;//in watts
K=TotLoss*3/10;//in watts
IronLoss=K;//in watts
StatorCuLoss=K;//in watts
RotorCuLoss=K;//in watts
MechLoss=K/3;//in watts
RotInput=Load+MechLoss+RotorCuLoss;//in watts
//Formula : RotorCuLoss=S*RotInput
S=RotorCuLoss/RotInput;//unitless
disp(S,"Slip is : ");
