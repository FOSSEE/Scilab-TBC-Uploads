// exa 4.3 Pg 105
clc;clear;close;

// Given Data
Sut=440;//MPa
d=25;//mm
R=95/100;// reliability
Kt=1.8;// stress concentration factor
q=0.86;// sensitivity factor

Se_dash = 0.5*Sut;// MPa

// for machined surface
ka=0.82;// surface finish factor
kb=0.85;// size factor
kc=0.868;// reliability factor
kd=1;// temperature factor
ke=0.577;// load factor

Kf=1+q*(Kt-1);// fatigue strength factor
kf=1/Kf ;// fatigue strength reduction factor
Se=ka*kb*kc*kd*ke*kf*Se_dash;// (MPa) Endurance limit
printf('\n Endurance limit = %.2f MPa',Se)


