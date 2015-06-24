////Ex 2.11
clc;
clear;
close;
format('v',6);
Beta=100;//unitless
VBE=0.7;//V
RC=2.7;//kohm
R=2.2;//kohm
VT=26;//mV
VCC=10;//V
VEE=10;//V
IExt=(VEE-VBE)/R;//mA
IT=IExt;;//mA
IE=IT/2;//mA(Let IE1=IE2=IE)
re=2*VT/IT;re1=re;re2=re;re3=re;re4=re//ohm
reD=re1+re2;//ohm
BetaD=Beta^2;//unitless
Ad=-RC*1000/reD;//unitless
disp(Ad,"Differential voltage gain, Ad")
Rid=2*BetaD*reD/1000;//kohm(let Rid1=Rid2=Rid)
disp(Rid,"Differntial input resistances, Rid1=Rid2(kohm)");
//Answer in the bok is not accurate.
