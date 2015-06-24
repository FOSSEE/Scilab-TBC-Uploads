//Example 8.1

clear;

clc;

T0=10^4;

f1=100;

f2=10^6;

f3=10*10^6;

w1=2*%pi*f1;

w2=2*%pi*f2;

w3=2*%pi*f3;

h=syslin('c',T0/[(1-(%s/w1))*(1-(%s/w2))*(1-(%s/w3))]);

gm=g_margin(h);

pm=p_margin(h);

printf("(a) Gain Margin(GM)=%.2f dB",gm);

printf("\n(b) Phase Margin(PM)=%.1f degrees",-pm);

f=512*10^3;

w=2*%pi*f;

T1=T0/[(1-((%i*w)/w1))*(1-((%i*w)/w2))*(1-((%i*w)/w3))];

den=1/(abs(T1)/T0);

printf("\n(c) T0 for PM=60 degrees=%.f",den);