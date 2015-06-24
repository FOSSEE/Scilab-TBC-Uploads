////Ex 2.7
clc;
clear;
close;
format('v',7);
Beta=100;//unitless
VBE=0.7;//V
VD1=0.7;VD2=0.7//V
VCC=15;//V
VEE=15;//V
VT=26;//mV
RE=560;//ohm
RC=6.8;//kohm
R=220;//ohm
VB=-VEE+VD1+VD2;//V
VE=VB-VBE;//V
IE3=(VE-(-VEE))/RE*1000;//mA
IT=IE3;//mA
ICQ=IT/2;//mA
VCEQ=VCC+VBE-ICQ*RC;//V
Q=[ICQ VCEQ];//[mA V](Q point)
disp(Q,"Q point (ICQ(mA), VCEQ(V)) is ");
re=2*VT/IT;//ohm
Ad=-RC*1000/re;//unitless
disp(Ad,"Differntial moe gain, Ad");
//Answer in the book is wrong for Q point.
