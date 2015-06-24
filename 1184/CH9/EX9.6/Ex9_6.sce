//Example 9-6,Page No- 330

clear
clc

R= 75
T=31+273
k=1.38*106-23
B=6*10^6
Vs = 8.3*10^-6
NF=2.8

Vn = (4*k*T*B*R)^0.5
Pn = Vn^2/R
Ps = Vs^2/R
SN = (Ps*10^12)/(Pn/10^12)

SN_dB =10*log10(SN)
NR = 10^0.28
SN_op = SN/NR

Tn = 290*(NR-1)

printf('The input noise power is %.1f pW',Pn/10^12)
printf('\n The input signal power is %.3f pW',Ps*10^12)
printf('\n Signal to noise ratio in decibels %f',SN)
printf('\n The noise factor is %.1f',NR)
printf('\n Signal to noise ratio of the amplifier is %f',SN_op)
printf('\n The noise temperature of the amplifier %.1f K',Tn)
