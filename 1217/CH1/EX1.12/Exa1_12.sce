//Exa 1.12
clc;
clear;
close;
//given data
BETAac=110;//unitless
BETAdc=110;//unitless
VBE=0.7;//in volts
VEE=15;//in volts
VT=25;//in mvolts
R=2.7;//in kohm
Rc=3.3;//in kohm
IR=(VEE-VBE)/R;//in mA
IC3=IR;//in mA
IC1=IC3/2;//in mA
IC2=IC3/2;//in mA
re1=VT/IC1;//in ohm
re2=re1;//in ohm
//  part (i)
Ad=(Rc*1000)/re1;//unitless
//  part (ii)
Ri1=2*BETAac*re1*10^(-3);//in kohm
Ri2=2*BETAac*re2*10^(-3);//in kohm
disp(Ad,"Differential mode voltage gain is : ")
disp("Input resistances are :")
disp(Ri1,"Ri1 in kohm is : ")
disp(Ri2,"Ri2 in kohm is : ")