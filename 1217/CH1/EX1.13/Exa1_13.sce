//Exa 1.13
clc;
clear;
close;
//given data
Ad=200;//unitless
Ri=3//in kohm
BETAac=110;//unitless
BETAdc=110;//unitless
VBE=0.7;//in volts
VEE=15;//in volts
VT=25;//in mvolts
re=Ri/(2*BETAac);//in ohm
RC=Ad*re;//in kohm
IC1=VT/re;//in mA
IR=2*IC1;//in mA
IC3=IR;//in mA
R=(VEE-VBE)/(IR*10^(-3));//in kohm
disp(RC,"Value of resistance Rc in kohm is :");
disp(R,"Value of resistance R in kohm is :");