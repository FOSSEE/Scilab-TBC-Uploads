clc;
clear;
z=2;
v=11e3;
r=1000e3;
zb=v^2/r;
y=z/zb;
y=round(y*10000)/10000;
mprintf("the per unit resistance=%fp.u",y);
