// exa 6.2 Pg 170
clc;clear;close;

// Given Data
Tmax=400;// N.m
Tmin=140;// N.m
Mmax=500;// N.m
Mmin=250;// N.m
Sut=540;// MPa
Syt=400;// MPa
n=2;// factor of safety
Kf=1.25;// given

Se_dash=0.4*Sut;// Mpa
Se=Se_dash/Kf;//MPa
Sys=0.577*Syt;// MPa
Ses=0.577*Se;// MPa
Mm=(Mmax+Mmin)/2;// N.m
Ma=(Mmax-Mmin)/2;// N.m
Tm=(Tmax+Tmin)/2;// N.m
Ta=(Tmax-Tmin)/2;// N.m
// Max. Distortion energy theory - Syt/n = 32/%pi/d**3*sqrt((Mm+Ma*(Syt/Se)**2)+0.75*(Tm+Ta*(Sys/Ses))**2)
d = (32/%pi*sqrt((Mm+Ma*(Syt/Se))**2+0.75*(Tm+Ta*(Sys/Ses))**2)*1000/(Syt/n))**(1/3) ; // mm
printf('shaft diameter = %.2f mm. Use %.f mm.',d,d)
