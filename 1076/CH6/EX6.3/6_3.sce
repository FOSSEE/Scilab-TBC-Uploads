clear;
clc;

dia=1.04e-2;
r=dia/2;
m=.85;
d=2.44;
P=74;
temp=21;

del=round((3.86*P/(273+temp))*1000)/1000;

Vv=(3e6/sqrt(2))*r*del*m* log(d/r)* (1+(.03/sqrt(del*r))) *1e-3;
mprintf("\nVisual local voltage = %.2f KV/phase", Vv)
