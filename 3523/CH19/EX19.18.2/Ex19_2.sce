clear all
clc
close

rho=30*1e-3;//Charge density in C/m^3
Vo=30*1e3;//Voltage in V

//Calculation of pumping pressure
P=Vo*rho;
printf('Pumping pressure is %f N/m^2',P)
