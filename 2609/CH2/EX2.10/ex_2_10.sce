////Ex 2.10
clc;
clear;
close;
format('v',9);
Beta=100;//unitless
VBE=0.7;//V
R=18.6;//kohm
VT=26;//mV
VCC=5;//V
VEE=5;//V
IExt=(VCC-VBE-(-VEE))/R;//mA
IT=IExt;;//mA
re=2*VT/IT;//ohm(let re1=re2=re)
Rid=2*Beta*re/1000;//kohm(let Rid1=Rid2=Rid)
disp(Rid,"Differntial input resistances, Rid1=Rid2(kohm)");
