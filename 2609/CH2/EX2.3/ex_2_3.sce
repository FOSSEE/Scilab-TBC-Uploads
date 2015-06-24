////Ex 2.3
clc;
clear;
close;
format('v',6);
IT=1;//mA
VCC=15;//V
RE=50;//kohm
RC=15;//kohm
Beta=120;//unitless
alfa=Beta/(Beta+1);//unitless
Vid=6;//mV
VT=26;//mV
//Part (a)
iC1=alfa*IT/(1+exp(-Vid/VT));//mA
iC2=IT-iC1;//mA
disp(iC2,"dc Collector current through transistors(mA)");
//Part (b)
iC=IT/2;//mA(let iC1=iC2=iC)
re=VT/iC;//ohm(let re1=re2=re)
Ad=-RC*1000/re;//unitless
Acm=-RC*1000/(re+2*RE*1000);//unitless
Acm=abs(Acm);////unitless
CMRR=abs(Ad/Acm);////unitless
disp(Ad,"Ad");
disp(Acm,"Acm");
CMRR=20*log10(CMRR);//dB
disp(CMRR,"CMRR(dB)");
