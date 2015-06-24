//Exa 6.11
clc;
clear;
close;
//given data
alfao=0.98;//unitless
ICO=10;//in uA
ICO=ICO*10^-3;//in mA
IB=0.22;//in mA
IC=(alfao*IB+ICO)/(1-alfao);//in mA
disp(IC,"Collector current in mA : ");