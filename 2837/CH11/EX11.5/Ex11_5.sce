clc
clear
//Initialization of variables
v=210 //ft/s
g=32.17 //ft/s^2
p=200 //psia
z=5 //ft
x=2.361
h=1210.3
J=778
//calculations
P0=p + v^2 /(2*g*144*x) + z/(144*x)
h0=h + v^2 /(2*J*g) +z/J
S=1.5594 //units/lb
S0=S
t0=401.9 //F
v0=2.342 //cu ft/lb
rho0=1/v0
//results
printf("Pressure = %d psia",P0)
printf("\n Enthalpy = %.2f Btu/lb",h0)
printf("\n Entropy  = %.4f units/lb",S0)
printf("\n Temperature = %.1f F",t0)
printf("\n Density = %.3f lb/cu ft",rho0)
