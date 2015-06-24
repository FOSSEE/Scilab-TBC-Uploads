clear;
clc;
r=200;
c=8;
e=c*r;
f=50;
mprintf("stored energy=%dMJ",e);
ps=160e6;
pe=100e6;
p=ps-pe;
m=e*1e6/(180*f);
a=p/m;
mprintf("\nthe angular acceleration=%f elec.degrees/sec^2",a)
