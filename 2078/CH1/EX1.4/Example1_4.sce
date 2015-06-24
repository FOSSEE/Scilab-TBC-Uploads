//Exa 1.4
clc;
clear;
close;
format('v',6);
//Given data :
Z=30+%i*110;//in ohm
kVA_B=100*1000;//kVA
kV_B=132;//kV
Z_BLV=kV_B^2*1000/kVA_B;//in ohm
Zpu=Z*kVA_B/kV_B^2/1000;//pu
disp(Zpu,"Leakage reactance Per unit (pu) :");
