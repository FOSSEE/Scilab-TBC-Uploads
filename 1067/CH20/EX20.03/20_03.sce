clear;
clc;
rating=25e6;
vb=11e3;
x=.16/4;
faultMVA=rating*1e-6/x;
mprintf("the fault MVA from method 1=%dMVA",faultMVA);
//method 2
Ifault=1/(x*%i);
Ib=rating/(sqrt(3)*vb);
Isc=Ib*25;
MVA=sqrt(3)*vb*Isc/1e6;
mprintf("\n the fault MVA from method 2=%dMVA",MVA);
