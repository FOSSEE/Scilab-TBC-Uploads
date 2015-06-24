clear;
clc;
f=5*(10^6);C=400*(10^-12);R=10*(10^3);
w=2*%pi*f;
L=2/(w*w*C);
r=1/(w*w*C*C*R);
printf("-Effective resistance of the coil = %f ohms\n",round(r*100)/100);
printf("-Inductance of effective resistance of the coil = %f mH",round(L*(10^3)*1000)/1000);
