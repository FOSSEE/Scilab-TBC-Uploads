//Ex 2.9.2
clc;clear;close;
format('v',6);

//Given : 
IF=10;//mA
VF=0.3;//volts
T=27+273;//K
Eta=1;//for Ge diode
VT=T/11600;//V
Io=IF/(exp(VF/Eta/VT)-1);//mA
disp(Io*10^6,"Reverse saturation current in nA : ");
