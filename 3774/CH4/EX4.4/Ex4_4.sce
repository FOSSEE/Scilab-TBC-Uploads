// exa 4.4 Pg 105
clc;clear;close;

// Given Data
Sut=440;//MPa
w=60;//mm
d=12;// mm
P=20;// kN
q=0.8;// sensitivity factor
R=90/100;// reliability
n=2;// factor of safety

Kt=2.52;// stress concentration factor
Se_dash = 0.5*Sut;// MPa
// for hot rollednormalized condition
ka=0.67;// surface finish factor
kb=0.85;// size factor (assuming t<50 mm)
kc=0.897;// reliability factor
kd=1;// temperature factor
ke=0.9;// load factor
dBYw=d/w; //(for circular hole)

Kf=1+q*(Kt-1);// fatigue strength factor
kf=1/Kf ;// fatigue strength reduction factor
Se=ka*kb*kc*kd*ke*kf*Se_dash;// (MPa) Endurance limit
sigma_d=Se/n;// MPa (design stress)
// sigma_max=P/(w-d)/t
sigma_max_into_t = P*1000/(w-d);
// putting sigma_max=sigma_d
t=sigma_max_into_t/sigma_d;// mm
printf('\n Thickness of plate = %.2f mm or 20 mm',t)


