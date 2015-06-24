//Find Concentration Gradient and diffusivity and rate
//Ex:21.2
clc;
clear;
close;
c_n=12;//nitrogen concentration in kg/m^3
t=6*10^-3;//thickness in m
z=(c_n-0)/t;//concentration gradient in kg/m^4
disp(z,"concentration gradient (in kg/m4) = ");
d0=5*10^-7;//in sqm/sec
q=75*10^3;//in j/mol
r=8.314;//in J/mol/K
t=400;//in K
dx=d0*exp(-q/(r*t));//diffusivity in sqm/sec
disp(dx,"Diffusivity (in sqm/sec) = ");
jx=-z*dx;//rate of flow of nitrogen in kg/sqm/sec
disp(jx,"Rate at which nitrogen escapes (in kg/sqm/sec) = ");