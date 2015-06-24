// Example 5.14, page no-315
clear
clc

Cd=1
Dp=0.018
Df=0.015
g=9.81
rho_f=2.7
rho=0.8
Vf=520*10^-9
//case 1

Qmin=Cd*((Dp^2-Df^2)/Df)*sqrt(%pi*g*Vf*(rho_f-rho)/(2*rho))
Qmin=Qmin*100000
printf("Case 1: When float is at the bottom\n Volumetric flow Qmin=%.3f *10^-5 m^3/sec",Qmin)

//case 2
Dp2=0.0617
Qmax=Cd*((Dp2^2-Df^2)/Df)*sqrt(%pi*g*Vf*(rho_f-rho)/(2*rho))
Qmax=Qmax*100000
printf("\n\nCase 2: When float is at the bottom\n Volumetric flow Qmax=%.2f *10^-5 m^3/sec",Qmax)
