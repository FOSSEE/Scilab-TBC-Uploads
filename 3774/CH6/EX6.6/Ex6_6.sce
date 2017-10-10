// exa 6.6 Pg 176
clc;clear;close;

// Given Data
Tmax=400;// N.mm
Tmin=200;// N.mm
Mmax=500;// N.mm
Mmin=250;// N.mm
Sut=540;// MPa
Syt=420;// MPa
n=2;// factor of safety

Se=0.35*Sut;// MPa

Mm=(Mmax+Mmin)/2;// N.m
Ma=(Mmax-Mmin)/2;// N.m
Tm=(Tmax+Tmin)/2;// N.m
Ta=(Tmax-Tmin)/2;// N.m
Sys=0.5*Syt// MPa
Ses=0.5*Se;// MPa
// Max. Distortion energy theory - Syt/n = 32/%pi/d**3*sqrt((Mm+Ma*(Syt/Se)**2)+0.75*(Tm+Ta*(Sys/Ses))**2)
d = (32/%pi*sqrt((Mm+Ma*(Syt/Se))**2+0.75*(Tm+Ta*(Sys/Ses))**2)*1000/(Syt/n))**(1/3) ; // mm
printf('shaft diameter = %.f mm.',d)
