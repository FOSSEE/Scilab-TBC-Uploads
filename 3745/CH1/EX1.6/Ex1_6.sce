// Ex 6 Page 346

clc;clear;close;
// Given

Ro=600;//ohm
fc=2*1000;//Hz
alfa=10;//dB


L=Ro/%pi/fc*1000;//mH
C=1/(%pi*Ro*fc)*10**6;//uF
alfa=alfa/8.686;//nepers
f=fc*cosh(alfa/2)/1000;//kHz
printf("\nat f = %.2f kHz, the above filter will have required attenuation.",f)
