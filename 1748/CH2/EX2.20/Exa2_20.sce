//Exa 2.20
clc;
clear;
close;
//Given data :
phase=3;//no. of phase
Pin_stator=60;//Power input of stator in KW
TotalStatorLosses=1;//in KW
Pin_rotor=Pin_stator-TotalStatorLosses;//Power input of rotor in KW
S=3;//slip in %
RotorCopperLosses=(S/100)*Pin_rotor;//in KW
RotorCopperLosses=RotorCopperLosses/phase;//in KW per phase
disp(RotorCopperLosses*10^3,"Rotor Copper Losses per phase(in watts) : ");
TotalMechPowerDev=Pin_rotor*(1-S/100);//in KW
disp(TotalMechPowerDev,"Total mechanial power developed(in KW) : ") ;