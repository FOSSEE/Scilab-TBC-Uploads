//Exa 2.5
clc;
clear;
close;
//Given data
Ileakage=12.5;//in uA
ICBO=12.5;//in uA
IE=2;//in mA
IC=1.97;//in mA
//Formula : IC=alfa*IE+ICBO
alfa=(IC-ICBO/10^3)/IE;//unitless
disp(alfa,"Current Gain : ");
IB=IE-IC;//in mA
disp(IB,"Base current in mA : ");