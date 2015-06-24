////Ex 2.5
clc;
clear;
close;
format('v',5);
Beta=100;//unitless
VBE=0.715;VD1=0.715;//V
VZ=6.2;//V
VT=26;//mV
IZt=41;//mA
VCC=10;//V
VEE=10;//V
RE=2.7;//kohm
RC=4.7;//kohm
VB=-VEE+VZ+VD1;//V
VE=VB-VBE;//V
IE3=(VE-(-VEE))/(RE);//mA
IT=IE3;//mA
ICQ=IT/2;//mA(let ICQ1=ICQ2=ICQ)
VCEQ=VCC+VBE-ICQ*RC;//V
Q=[ICQ VCEQ];//[mA V](Q point)
disp(Q,"Q point (ICQ(mA), VCEQ(V)) is ");
re=2*VT/IT;//ohm
Ad=-RC*1000/re;//unitless
Rid=2*Beta*re/1000;//kohm
disp(Ad,"Ad");
disp(Rid,"Rid(kohm)");
