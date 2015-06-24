////Ex 2.9
clc;
clear;
close;
format('v',5);
Beta=110;//unitless
VBE=0.7;//V
VT=26;//mV
VCC=10;//V
VEE=10;//V
RC=1.8;//kohm
R=3.9;//kohm
IExt=(VCC-VBE-(-VEE))/R;//mA
IT=IExt;;//mA
ICQ=IT/2;//mA
V1=0;V2=0;//V
VE=-2*VBE;//V
VC=VCC-ICQ*RC;//V
VCEQ=VC-VE;//V
Q=[ICQ VCEQ];//[mA V](Q point)
disp(Q,"Q point (ICQ(mA), VCEQ(V)) is ");
re=2*VT/IT;//ohm(let re1=re2=re)
reD=2*re;//ohm
Ad=-RC*1000/reD;//unitless
disp(Ad,"Differntial moe gain, Ad");
BetaD=Beta^2;//unitless
Rid=2*BetaD*reD/1000;//kohm(let Rid1=Rid2=Rid)
disp(Rid,"Differntial input resistance, Rid(kohm)");
//Answer for Ad is wrong(+ve) in the book while it is negative.
