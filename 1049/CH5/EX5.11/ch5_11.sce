clear;
clc;
L=1;
R=50;
V_s=200;
tau=L/R;
t=.01;
i=(V_s/R)*(1-exp(-t/tau));
Vd=.7;
t=8*10^-3;
i1=i-t*Vd;    printf("current through L=%.4f A",i1);
i_R=0;    //current in R at t=.008s
printf("\ncurrent through R=%.0f A",i_R);