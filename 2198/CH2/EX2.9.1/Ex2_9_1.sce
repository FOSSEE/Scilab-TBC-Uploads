//Ex 2.9.1
clc;clear;close;
format('v',6);

//Given : 
IF=10;//mA
VF=0.75;//volts
T=27+273;//K
Eta=2;//for Si diode
VT=T/11600;//V
Io=IF/(exp(VF/Eta/VT)-1);//mA
disp(Io*10^6,"Reverse saturation current in nA : ");
