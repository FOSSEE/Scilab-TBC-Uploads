// exa 4.8 Pg 112
clc;clear;close;

// Given Data
Sut=500;//MPa
Syt=300;//MPa
R=90/100;// reliability
n=2;// factor of safety
Tmin=-200;// N.m
Tmax=500;// N.m

Se_dash = 0.5*Sut;// MPa
// for cold drawn steel
ka=0.80;// surface finish factor
kb=0.85;// size factor (assuming t<50 mm)
kc=0.897;// reliability factor
kd=1;// temperature factor
ke=0.577;// load factor

Ses=ka*kb*kc*kd*ke*Se_dash;// MPa( Endurance limit)
Sys=ke*Syt;// MPa
Tm=(Tmax+Tmin)/2;// N.m
Ta=(Tmax-Tmin)/2;// N.m
theta=atand(Ta/Tm);// degree
Sms=Ses/tand(theta);//MPa
Sas=Ses;//MPa
tau_da=Sas/n;//MPa
//tua_da=16*Ta/%pi/d**3
d=(16*Ta*1000/%pi/tau_da)**(1/3);//mm
printf('\n diameter of shaft = %.f mm',d)
