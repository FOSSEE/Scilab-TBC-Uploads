// To determine the maximum safe working voltage
clear
clc;
r=.5;//radius of conductor(cm)
g1max=34;
er=5;
r1=1;
R=7/2;//external dia(cm)
g2max=(r*g1max)/(er*r1);
V=((r*g1max*log(r1/r))+(r1*g2max*log(R/r1)));
V=V/(sqrt(2));
mprintf("Maximum safe working volltage ,V =%.2f kV r.m.s\n",V);
