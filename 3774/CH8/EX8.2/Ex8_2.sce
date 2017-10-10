// exa 8.2 Pg 228
clc;clear;close;

// Given Data
Fmin=60;// N
Fmax=140;// N
d=3;// mm
Dm=18;// mm
Sut=1430;// MPa

C=Dm/d;// spring index
Kw=(4*C-1)/(4*C-4)+0.615/C;// Wahl's correction factor
Ks=1+0.5/C;// Shear Stress factor
Fm=(Fmax+Fmin)/2;// N
Fa=(Fmax-Fmin)/2;// N
tau_m=Ks*(8*Fm*C)/(%pi*d**2);// MPa
tau_a=Kw*(8*Fa*C)/(%pi*d**2);// MPa
Ses_dash=0.22*Sut;// MPa
Sys=0.45*Sut;// MPa
//tau_m/Sys+tua_a/Ses_dash*(2-Ses_dash/Sys)=1/n
n=1/(tau_m/Sys+tau_a/Ses_dash*(2-Ses_dash/Sys));// factor of safety
printf('\n factor of safety = %.2f',n)
