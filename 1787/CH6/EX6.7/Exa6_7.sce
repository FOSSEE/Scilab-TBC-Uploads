//Exa 6.7
clc;
clear;
close;
//given data
ICBO=12.5;//in uA
ICBO=ICBO*10^-3;//in mA
IE=2;//in mA
IC=1.97;//in mA
alfa=(IC-ICBO)/IE;//unitless
IB=IE-IC;//in mA
disp(alfa,"Current gain : ");
disp(IB,"Base current in mA : ");