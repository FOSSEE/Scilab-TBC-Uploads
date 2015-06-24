clc;funcprot(0);......//Example 4.22
//Initialization of variables
L=6;.........//Length of the duck in m
D=0.2;.........//Width of square plate in m
T=293;.............//Bulk Temperature in K
Tw=305;........//Temperature of wall in K
U=0.05;.........//Average velocity of fluid in m/s
//properties of n butyl alcohol at 293 K
Cp=2366;........//Specific heat in J/kg K
rho=810;........//Density in kg/m^3
mu=29.5*10^-4;..........//Viscosity in N s/m^2
v=3.64*10^-6;.......//Viscosity in m^2/s
K=0.167;.......//Thermal conductivity in W/mK
Pr=50.8;......//Prandlt no
//Calculations
Re=(U*D*rho)/(mu);........//Reynolds number
Nu=2.98;............//Nusselt number
h=Nu*(K/D);.........//Average heat transfer co-efficient in W/m^2 K
disp(h,"Average heat transfer co-efficient in W/m^2 K:")
