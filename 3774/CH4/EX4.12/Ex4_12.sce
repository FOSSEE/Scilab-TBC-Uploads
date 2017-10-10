// exa 4.12 Pg 119
clc;clear;close;

// Given Data
Sut=620;//MPa
Syt=380;//MPa
R=90/100;// Reliability
n=2.5;// factor of safety
Tmin=-200;// N.m
Tmax=400;// N.m

Se_dash=0.5*Sut;//MPa
// for ground shaft
ka=0.92;// surface finish factor
kb=0.85;// size factor (assuming t<50 mm)
kc=0.897;// reliability factor
kd=1;// temperature factor
ke=0.577;// load factor
Ses=ka*kb*kc*kd*ke*Se_dash;// MPa( Endurance limit)
Sys=ke*Syt;// MPa
Tm=(Tmax+Tmin)/2;// N.mm
Ta=(Tmax-Tmin)/2;// N.mm
theta=atan(Ta/Tm);//radian
Sas=Ses;// MPa
Sms=Sas/3;// MPa
//Tda=Sas/n=16*Ta/%pi/d**3
d=(16*Ta*1000/%pi/(Sas/n))**(1/3);// mm
printf('\n diameter of shaft, d = %.2f mm or %d mm',d, ceil(d))
