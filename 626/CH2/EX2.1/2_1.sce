clear;
clc;
close;
disp("Example 2.1")
p=3*10^6 ; //pressure in Pa
t=298 ; //temperatue in kelvin
mw= 29; //molecular weight in kg/mol
ru=8314; //universal constant in J/kmol.K
r=ru/mw ;
//using perfect gas law to get density:
rho=p/(r*t) ;
disp(r,"Gas constant of air in J/kg.K:")
disp(rho,"Density of air in kg/m^3:")