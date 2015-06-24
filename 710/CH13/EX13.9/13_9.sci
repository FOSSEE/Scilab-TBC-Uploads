clc();
clear;
//To determine signal attenuation
//given condition:po=pi/4where p0=mean optical power at fibre output,pi=mean optical power launched into fibre
//S=10*log(pi/po)
S=10*log10(1/(1/4))          //signal attenuation in dB
printf("Signal attenuation when po=pi/4 is %f dB",S);