//Exa 6.6
clc;
clear;
close;
//given data
alfao=0.98;//unitless
ICO=10;//in uA
ICO=ICO*10^-3;//in mA
IE=2;//in mA
IC=alfao*IE+ICO;//in mA
IB=IE-IC;//in mA
disp(IC,"Collector current in mA : ");
disp(IB*1000,"Base current in uA : ");