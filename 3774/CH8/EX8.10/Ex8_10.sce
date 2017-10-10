// exa 8.10 Pg 235
clc;clear;close;

// Given Data
Fmin=600;// N
Fmax=1000;// N
C=6;// spring index
n=1.5;// factor of safety
Sys=700;// N/mm.sq.
Ses_dash=350;// N/mm.sq.

Kw=(4*C-1)/(4*C-4)+0.615/C;// Wahl's correction factor
Ks=1+0.5/C;// Shear Stress factor
Fm=(Fmax+Fmin)/2;// N
Fa=(Fmax-Fmin)/2;// N
tau_m_into_d_sq=Ks*(8*Fm*C)/(%pi);// where tau_m_into_d_sq = tau_m*d**2
tau_a_into_d_sq=Kw*(8*Fa*C)/(%pi);// where tau_a_into_d_sq = tau_a*d**2

//(tau_m-tau_a)/Sys+2*tua_a/Ses_dash=1/n
d=sqrt(n)*sqrt((tau_m_into_d_sq-tau_a_into_d_sq)/Sys+2*tau_a_into_d_sq/Ses_dash);// mm
printf('wire diameter of spring = %.2f mm',d)
