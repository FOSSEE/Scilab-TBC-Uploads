//Exa 1.17
clc;
clear;
close;
//given data
BETAac=100;//unitless
BETAdc=100;//unitless
VBE=0.7;//in volts
VCC=10;//in volts
VEE=-10;//in volts
VT=25;//in mVolts
R=3.6;//in kohm
RC=2.2;//in kohm
// part (i) //
IR=(VCC-VBE-VEE)/R;//in mA
ICQ=IR/2;//in mA
VE=-2*VBE;//in Volts
VC=VCC-ICQ*RC;//in Volts
VCEQ=VC-VE;//in Volts
disp(VCEQ,"Operating point VCEQ in volt is : ")
// part (ii) //
re=VT/ICQ;//in ohm
re1=re;//in ohm
re2=re;//in ohm
reT=re1+re2;//in ohm
Ad=(RC*1000)/reT;// unitless
disp(Ad,"Differential voltage gain is : ")
// part (iii) //
BETAT=BETAac*BETAdc;//unitless
Rid=2*BETAT*reT*10^-3;//in kohm
disp(Rid,"Differential input resistance in kohm is : ")