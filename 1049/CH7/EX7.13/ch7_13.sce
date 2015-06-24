clear;
clc;
a=.2;
V_s=500;
E=a*V_s;
L=0.06;
I=10;
T_on=(L*I)/(V_s-E);
f=a/T_on;    printf("chopping freq=%.2f Hz",f);