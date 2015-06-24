// Example 2.33 page no-117
clear
clc

A = 0.001// cm2
sig1n= 1 //mhos/cm,
sig1p=100 //mhos/cm
mun=3800 //cm2/sec
mup = 1800 //cm2/sec.
e=1.6*10^-19 //C
eps=16*8.85*10^-14//F/cm
ni=6.25*10^26
T=300
Vt=T/11600
Nd=sig1n/(e*mun)
Na=sig1p/(e*mup)
V0=Vt*log(Na*Nd/ni)
w=sqrt(2*eps*(V0+1)/(e*Na))
printf("\nND=%.2f * 10^15 /cm^3\nNA=%.1f * 10^17 /cm^3\nV0=%.3f V\nw=%.3f * 10^-4 cm",Nd*10^-15,Na*10^-17,V0,w*10^4)
