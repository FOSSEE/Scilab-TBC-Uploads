// exa 6.8 Pg 178
clc;clear;close;

// Given Data
Tmax=300;// N.mm
Tmin=-100;// N.mm
Mmax=400;// N.mm
Mmin=-200;// N.mm
n=1.5;// factor of safety
Sut=500;// MPa
Syt=420;// MPa
sigma_d=280;// MPa
ka=0.62; // surface finish factor
kb=0.85;// size factor
keb=1;// load factor for bending
kes=0.58;// load factor for torsion
Kfb=1;// fatigue strength factor for bending 
Kfs=1;// fatigue strength factor for torsion

Se_dash=0.5*Sut;// MPa
Se=ka*kb*keb*Se_dash;// MPa
Ses_dash=0.5*Se_dash;// MPa
Ses=ka*kb*kes*Ses_dash;// MPa
Sys=0.5*Syt;// MPa
Mm=(Mmax+Mmin)/2;// N.m
Ma=(Mmax-Mmin)/2;// N.m
Tm=(Tmax+Tmin)/2;// N.m
Ta=(Tmax-Tmin)/2;// N.m

// tau_d/n = (16/%pi/d**3)*sqrt((Mm+Ma*(Syt/Se)**2)+(Tm+Ta*(Sys/Ses))**2)
tau_d=sigma_d/2;// MPa
d = ((16/%pi)*sqrt((Mm+Ma*(Syt/Se)**2)+(Tm+Ta*(Sys/Ses))**2)/(tau_d*10**6/n))**(1/3)*1000;// mm
printf('shaft diameter = %.2f mm.',d)
// Note - answer in the  textbook is not accurate.
