// exa 4.18 Pg 123
clc;clear;close;

// Given Data
Pmin=-300;// kN
Pmax=700;// kN
Se_dash=280;// MPa
Sy=350;// MPa
Kf=1.8;//fatigue strength factor
n=2;// factor of safety

Pm=(Pmax+Pmin)/2;// kN
Pa=(Pmax-Pmin)/2;// kN
// sigma_m=4*Pm/%pi/d**2
sigma_m_into_d_sq = 4*Pm*1000/%pi;
sigma_a_into_d_sq = 4*Pa*1000/%pi;
kf=1/Kf ;// fatigue strength reduction factor
kb=0.85;// size factor
ke=0.9;//load factor
ka=0.93;// surface finish factor
Se=ka*kb*ke*kf*Se_dash;// MPa
//Goodman failure equation - sigma_m/Sy+sigma_a/Se=1/n
d=sqrt((sigma_m_into_d_sq/Sy+sigma_a_into_d_sq/Se)*2.25)
printf('\n Suitable diameter of rod, d = %.f mm',d)
// Note - Ans in the textbook is wrong.
