//Exa 2.23
clc;
clear;
close;
//Given data :
format('v',6);
UsefulOutput=55;//in H.P.
MechLosses=2;//in H.P.
Stator_Losses=13.5;//in KW
MechPowerDev=UsefulOutput+MechLosses;//in H.P.
MechPowerDev=MechPowerDev*735.5/1000;//in KW
S=50;//in %
Pin_Rotor=MechPowerDev/(1-S/100);//in KW
RotorCopperLoss=(S/100)*Pin_Rotor;//in KW
disp(RotorCopperLoss,"Rotor Copper Loss(in KW) : ");
Pin_Motor=Pin_Rotor+Stator_Losses;//in KW
Efficiency=UsefulOutput*0.7355/Pin_Motor;///unitless
disp(Efficiency*100,"Effiiency(in %) :");