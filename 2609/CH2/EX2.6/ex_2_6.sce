////Ex 2.6
clc;
clear;
close;
format('v',6);
Beta=100;//unitless
VBE=0.7;//V
VCC=10;//V
VEE=10;//V
VT=26;//mV
RC=2.7;//kohm
R=2.2;//kohm
IExt=(VEE-VBE)/R;//mA
IC3=IExt;IT=IExt;;//mA
ICQ=IT/2;//mA
re=2*VT/IT;//ohm(let re1=re2=re)
Ad=-RC*1000/re;//unitless
Rid=2*Beta*re/1000;//kohm(let Rid1=Rid2=Rid)
disp(Ad,"Differntial moe gain, Ad");
disp(Rid,"Differntial input resistance, Rid(kohm)");
