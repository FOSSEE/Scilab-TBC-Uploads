//Exa 1.16
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
Ad=200;//unitless
IR=(VCC-VBEon -VEE)/R;//in mA
IC1=IR/2;//in mA
IC2=IC1;//in mA
re1=(2*VT)/IR;//in ohm
re2=re1;//in ohm
RC=Ad*re1*10^-3;//in kohm
disp(RC,"Rc in kohm is :")