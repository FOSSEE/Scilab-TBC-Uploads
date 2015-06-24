clc
clear
V_s=300;//V
R=60;//ohm
L=2;//H
t=40*10^-6;//s
i_T=(V_s/R)*(1-exp(-R*t/L));
i=.036;//A
R1=V_s/(i-i_T);
printf("maximum value of remedial parameter=%.3f kilo-ohm",R1/1000);