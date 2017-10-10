clc;
clear;
ni=1.5*10^10 //in cm^-3
Nd=5*10^16 //n-type doping in cm^-3
V=0.5 //forward bias current in V
e=1.6*10^-19 //in eV
tau_p=1*10^-6 //in s 
Dp=10 //in cm^2/s
A=10^-3 //cross-sectional area in cm^2
Const=0.0259 //constant for kT/e in V

//Calculation
pn=ni^2/Nd //in cm^-3
Lp=sqrt(Dp*tau_p) //in cm
I=e*A*(Dp/Lp)*pn*(exp(V/Const))

mprintf("Current= %.1e micro-Ampere",I)
