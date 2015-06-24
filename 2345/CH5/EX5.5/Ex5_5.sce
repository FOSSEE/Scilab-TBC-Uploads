//Finding capacitance
//Example 5.5(pg 195)
clc
clear
A=0.2//surface area of plate in m^2
t=2.5*(10^-5)//thickness of dielectric in m
K0=8.854*(10^-12)//permittivity of air  in F/m
K=5//relative permittivity of dielectric
C=(K*K0*A*(10^6))/t//capacitance of condenser in microF
printf('Thus the Capacitance of condenser is %3.3f microF',C)
