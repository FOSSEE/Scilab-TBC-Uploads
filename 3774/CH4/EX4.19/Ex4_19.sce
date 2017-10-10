// exa 4.19 Pg 124
clc;clear;close;

// Given Data
w=110;// mm
Pmin=98.1;// kN
Pmax=250;// kN
Se=225;// N/mm.sq
Sy=300;// N/mm.sq
n=1.5;// factor of safety

Pm=(Pmax+Pmin)/2;// kN
Pa=(Pmax-Pmin)/2;// kN
// sigma_m=Pm/w/t
sigma_m_into_t = Pm/w;
sigma_a_into_t = Pa/w;
//Soderburg failure equation - sigma_m/Sy+sigma_a/Se=1/n
d=(sigma_m_into_t/Sy+sigma_a_into_t/Se)*n*1000;// mm
printf('\n thickness of plate, t = %.1f mm',d)
