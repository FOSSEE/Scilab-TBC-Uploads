clc
clear
//INPUT DATA
x=6.40*10^7//electrical conductivity in mho m^-1
t=300//temperature of copper in k
L=2.44*10^-8//Lorentz number in W ohm K^-2

//CALCULATION
K=x*t*L//thermal conductivity of copper in W m^-1 K^-1

//OUTPUT
printf('The thermal conductivity of copper is %3.2f W.m^-1.K^-1',K)
