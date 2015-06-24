//Exa 1.3
clc;
clear;
close;
//Given data :
kVA_B=2.5;//kVA
kV_B=0.4;//kV
reactance=0.96;//in ohm
Z_BLV=kV_B^2*1000/kVA_B;//in ohm
Zpu=reactance/Z_BLV;//in ohm
disp(Zpu,"Leakage reactance Per unit (pu) :");
