// Example 5.13, page no-315
clear
clc
Cd=0.6
Dp=0.05
Df=0.035
g=9.8
rho_f=3.9*10^3
rho=1000
Vf=3.36*10^-5
Q=Cd*((Dp^2-Df^2)/Df)*sqrt(3.14*g*Vf*(rho_f-rho)/(2*rho))
Q=Q*10000
printf(" Volumetric flow Q=%.4f *10^-4 m^3/sec",Q)
