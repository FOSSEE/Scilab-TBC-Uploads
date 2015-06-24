//Exa 1.14
clc;
clear;
close;
//given data
Ad=400;//unitless
Ri=3//in kohm
BETAac=110;//unitless
BETAdc=110;//unitless
VBE=0.7;//in volts
VEE=15;//in volts
VT=25;//in mvolts
//circuit bias current IR
IR=3;//in mA
R=(VEE-VBE)/(IR);//in kohm
re=(2*VT)/IR;//in ohm
RC=Ad*re*10^-3;//in kohm
Ri=2*BETAac*re*10^-3;//in kohm
disp(R,"Value of resistance R in kohm is :");
disp(RC,"Value of resistance Rc in kohm is :");
disp(Ri,"Value of resistance Ri in kohm is :");