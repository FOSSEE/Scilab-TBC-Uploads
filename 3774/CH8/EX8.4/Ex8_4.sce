// exa 8.4 Pg 230
clc;clear;close;

// Given Data
Fmin=500;// N
Fmax=1200;// N
C=6;// spring index
n=1.5;// factor of safety
Sys=760;// MPa
Ses_dash=350;// MPa
del=25;// mm
G=82;// kN/mm.sq.

Kw=(4*C-1)/(4*C-4)+0.615/C;// Wahl's correction factor
Ks=1+0.5/C;// Shear stress factor
Fm=(Fmax+Fmin)/2;// N
Fa=(Fmax-Fmin)/2;// N
tau_m_into_d_sq=Ks*(8*Fm*C)/(%pi);// where tau_m_into_d_sq = tau_m*d**2
tau_a_into_d_sq=Kw*(8*Fa*C)/(%pi);// where tau_a_into_d_sq = tau_a*d**2

//(tau_m-tau_a)/Sys+2*tua_a/Ses_dash=1/n
d=sqrt(n)*sqrt((tau_m_into_d_sq-tau_a_into_d_sq)/Sys+2*tau_a_into_d_sq/Ses_dash);// mm
printf('\n diameter of spring wire = %.2f mm or %.f mm',d, ceil(d))
d=ceil(d);// mm
Dm=C*d;// mm
printf('\n Mean coil diameter = %.f mm', Dm)
//del=8*Fmax*Ci**3/(G*d)
i=(del/(8*Fmax*C**3/(G*10**3*d)));// no. of active coils
i=ceil(i);// no. of active coils
printf('\n no. of active coils = %.f',i)
nt=i+2;// no. of active coils (for square & ground ends)
lf=nt*d+1.15*del;// mm
printf('\n free length of spring = %.2f mm',lf)
