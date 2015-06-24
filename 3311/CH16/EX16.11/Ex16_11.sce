// chapter 16
// example 16.11
// Determine depth of heating and heat generated per unit surface area
// page-1036
clear;
clc;
// given
L=10; // in cm (length)
d=1; // in cm  (diameter)
N=15; // number of turns
I=80; // in A
f=200; // in kHz
ur=1; // relative permeability
rho=5E-8; // in ohm-m (resistivity)
// calculate
L=L*1E-2; // changing unit from cm to m
d=d*1E-2; // changing unit from cm to m
f=f*1E3; // changing unit from KHz to Hz
del=503*sqrt(rho/(ur*f)); // calculation of depth of heating
H=2*%pi*(N*I/L)^2*sqrt(rho*ur*f/1E7); // calculation of heat generated per unit surface area
printf("\nThe depth of heating is \t\t\t del=%.3f mm",del*1E3);
printf("\nThe heat generated per unit surface area is \t H=%.2f kW/m^2",H*1E-3);
// Note : The value of L given is L=10 cm but the author has used L=1 cm in the calculation. Thats why answer in the book is wrong.