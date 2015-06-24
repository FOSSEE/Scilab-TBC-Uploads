clc
clear
L=1;//H
R=50;//ohm
V_s=200;//V
tau=L/R;
t=.01;//s
i=(V_s/R)*(1-exp(-t/tau));    printf("current in R,L=%.3f A",i);
C=1*10^-6;//F
V_c=sqrt(L/C)*i;
printf("\nvoltage across C=%.3f kV",V_c/1000);