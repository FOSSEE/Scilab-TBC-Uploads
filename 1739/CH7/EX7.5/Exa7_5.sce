//Exa 7.5
clc;
clear;
close;
//Given data :
format('v',4)
To=150;//in kelvin
T1=20;//in degree C
T1=T1+273;//in kelvin
T2=70;//in degree C
T2=T2+273;//in kelvin
//Formula ; Jth=exp(T/To)
Jth20=exp(T1/To);
Jth70=exp(T2/To)
ratio=Jth70/Jth20;//unitless
disp(ratio,"Ratio of current densities for AlGaAs injection laser : ");