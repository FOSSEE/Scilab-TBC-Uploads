// exa 4.16 Pg 122
clc;clear;close;

// Given Data
Pmin=-15;// kN
Pmax=25;// kN
Se_dash=360;// MPa
Sy=400;// MPa
Ki=1.25;// impact factor
n=2.25;// factor of safety
ka=0.88;// surface finish factor
Kt=2.25;// stress concentration factor
Pm=(Pmax+Pmin)/2;// kN
Pa=(Pmax-Pmin)/2;// kN
q=0.8;// sensitivity factor

// sigma_m=4*Pm/%pi/d**2
sigma_m_into_d_sq = 4*Pm*1000/%pi;
sigma_a_into_d_sq = 4*Pa*1000/%pi;
Kf=1+q*(Kt-1);// fatigue strength factor
kf=1/Kf ;// fatigue strength reduction factor
kb=0.85;// size factor
ke=0.9;//load factor
ki=1/Ki;// reverse impact factor
Se=ka*kb*ke*kf*ki*Se_dash;// MPa
//soderburg failure equation - sigma_m/Sy+sigma_a/Se=1/n
d=sqrt((sigma_m_into_d_sq/Sy+sigma_a_into_d_sq/Se)*n)
printf('\n Size of piston rod, d = %.f mm',d)
