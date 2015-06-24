//Exa 1.15
clc;
clear;
close;
//given data
BETAac=100;//unitless
BETAdc=100;//unitless
VBEon=0.7;//in volts
VCC=5;//in volts
VEE=-5;//in volts
VT=25;//in mVolts
R=18.6;//in kohm
IR=(VCC-VBEon -VEE)/R;//in mA
IC1=IR/2;//in mA
IC2=IC1;//in mA
re1=(2*VT)/IR;//in ohm
re2=re1;//in ohm
Ri1=2*BETAac*re1*10^-3;//in kohm
Ri2=Ri1;//in kohm
disp("Differential input resistances are :")
disp(Ri1,"Ri1 in kohm is :")
disp(Ri2,"Ri2 in kohm is :")