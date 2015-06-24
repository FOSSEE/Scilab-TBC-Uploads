clear;
clc;

ef=200;
Zc=400;
Z1=500;
Z2=300;
et=2*ef*(Z1*Z2/(Z1+Z2))/((Z1*Z2/(Z1+Z2))+Zc)
mprintf("\nSurge Voltage transmitted= %.2f kV",et)
it1=et/Z1;
mprintf("\nSurge Current transmitted= %.3f kA",it1)
it2=et/Z2;
mprintf("\nSurge Current transmitted= %.3f kA",fix(it2*100)/100)
er=et-ef;
mprintf("\nSurge Voltage Reflected= %.2f kV",er)
ir=it1+it2-(ef/Zc)
mprintf("\nSurge Current Reflected= %.2f kA",ir)
