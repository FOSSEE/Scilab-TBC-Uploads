////Ex 2.4
clc;
clear;
close;
format('v',6);
RC=2;//kohm
RE=4.3;//kohm
VEE=5;//V
VBE=0.7;//V
IT=(VEE-VBE)/RE;//mA
VT=26;//mV
re=2*VT/IT;//ohm
Ad=-RC*1000/2/re;//unitless
disp(Ad,"Ad");
Acm=-RC*1000/(re+2*RE*1000);//unitless
disp(Acm,"Acm");
CMRR=abs(Ad/Acm);////unitless
disp(CMRR,"CMRR");
