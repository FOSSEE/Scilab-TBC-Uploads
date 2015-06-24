//Exa 6.8
clc;
clear;
close;
//given data
RL=4;//in Kohm
VL=3;//in volt
alfa=0.96;//unitless
IC=VL/RL;//in mA
IE=IC/alfa;//in mA
IB=IE-IC;//in mA
disp(IB,"Base current in mA : ");