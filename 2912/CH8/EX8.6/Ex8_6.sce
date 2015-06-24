//chapter 8
//example 8.6
//Calculate flux density, magnetic intensity and relative permeability
//page 237
clear;
clc;
//given
l=30; // in cm (length of solenoid)
A=1; // in cm^2 (cross-sectional area)
N=300; // number of turns
i=0.032; // in A (current through the winding)
phi_B=2E-6; // in Wb (magnetic flux)
pi=3.14;// value of pi used in the solution
mu0=4*pi*1E-7; // in H/m (absolute permeability)
//calculate
l=l*1E-2; // changing unit from cm to m
A=A*1E-4; // changing unit from cm^2 to m^2
B=phi_B/A; // calculation of flux density
printf('\nThe flux density is \tB=%1.0E Wb/m^2',B);
H=N*i/l; // calculation of magnetic intensity
printf('\nThe magnetic intensity is \tH=%.f A-turns/m',H);
mu=B/H; // calcluation of absolute permeability of iron
mu_r=mu/mu0; // calcluation of relative permeability of iron
printf('\nThe relative permeability of iron is \t%.f',mu_r);
// Note: The value of relative permeability varies slightly due to the use of round off value mu as calculated
