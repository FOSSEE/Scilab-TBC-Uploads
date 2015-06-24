//Example 6.2
//Strengthing Mechanism
//Page No. 219
clc;clear;close;

sigma0=600;           //in MPa
G=27.6;               //in GPa
G=G*10^9           //conversion to Pa
b=2.5*10^-8;              //in cm
b=b*10^-2;            //conversion to m
T0=sigma0/2;
T0=T0*10^6;             //conversion to Pa
lambda=G*b/T0;
Cu_max=54;             //in %
Cu_eq=4;               //in %
Cu_min=0.5;             //in %
rho_al=2.7;             //in g/cm^3
rho_theta=4.43;           //in g/cm^3
wt_a=(Cu_max-Cu_eq)/(Cu_max-Cu_min);
wt_theta=(Cu_eq-Cu_min)/(Cu_max-Cu_min);
V_a=wt_a/rho_al;
V_theta=wt_theta/rho_theta;
f=V_theta/(V_a+V_theta);
r=(3*f*lambda)/(4*(1-f));
printf('\nParticle Spacing = %g m\nParticle Size = %g m',lambda,r);
