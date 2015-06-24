//chapter 6
//example 6.5
//Calculate relaxation time of conduction electrons
//page 147-148
clear;
clc;
//given
n=6.5E28; // in 1/m^3 (density of electron)
m=9.1E-31; // in Kg (mass of electron)
e=1.6E-19; // in C (charge of electron)
p=1.43E-8; // in ohm-m (resistivity)
//calculate
t=m/(n*e^2*p); // calculation of relaxation time
printf('\nThe relaxation time of conduction electrons is %1.2E sec',t);
