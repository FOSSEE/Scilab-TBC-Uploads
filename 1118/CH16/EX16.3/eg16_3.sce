clear;
//clc();
sb=50*10^6;
xg=0.2;
sg=10*10^6;

xgpu=sb*xg/sg;
xpg=1/4;
ssc=500;
xu=1/15;
vl=33*10^3;
ifl=sb/(sqrt(3)*vl);
vn=vl/sqrt(3);
x=vn*xu/ifl;
printf("the reactance of the reactor is:%.2f Ohm",x);
