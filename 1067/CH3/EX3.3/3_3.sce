clear;
close;
clc;
C=.003e-6 
L=1.6e-3 
y=sqrt(L*C);
y=round(y*1e7)/1e7;
f=(2*3.14*y)^-1; 
f=round(f/100)*100;
i=7500;
E=i*2*3.15*L*50;
Em=1.414*E;
Em=round(Em/10)*10
t=y*%pi/2;
t=t*1e6;
t=round(t*100)/100;
e=Em/y;
e=round((e)/1e6)*1e6;
e=fix(e/1e7)*1e7
mprintf("frequency of oscillations=%fc/s",f);
mprintf("\ntime of maximum restriking voltage=%fmicrosec",t);
mprintf("\nmaximum restriking voltage=%dV/microsecs",e/1e6);
