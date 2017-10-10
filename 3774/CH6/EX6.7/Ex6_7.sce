// exa 6.7 Pg 177
clc;clear;close;

// Given Data
Wmax=40;// kN
Wmin=20;// kN
L=500;// mm
Se_dash=350;// MPa
Sut=650;// MPa
Syt=500;// MPa
n=1.5;// factor of safety
ka=0.9; // surface finish factor
kb=0.85;// size factor
ke=1;// load factor
Kf=1;// fatigue strength factor

Wm=1/2*(Wmax+Wmin);// N
Wa=1/2*(Wmax-Wmin);// N
Se=ka*kb*ke*Se_dash;//MPa
Mm=Wm*L/1000/4;// kN.m
Ma=Wa*L/1000/4;// kN.m
//sigma_m=32*Mm/%pi/d**3; & sigma_a=32*Ma/%pi/d**3
//soderburg failure criteria - 1/n=sigma_m/Syt+Kf*sigma_a/Se
//d=((32/%pi*n/1000)*(Mm/Syt+Kf*Ma/Se))*(1/3)
d=((32/%pi/1000)*(Mm/Syt+Kf*Ma/Se)*n)**(1/3)*1000;// mm
printf('shaft diameter = %.f mm.',d)
