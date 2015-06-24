//chapter 8
//example 8.4
//Calculate magnetic force and relative permeability
//page 236-237
clear;
clc;
//given
I=3000; // in A/m (intensity of magnetisation)
B=0.005; // in Wb/m^2 (magnetic flus intensity)
pi=3.14;// value of pi used in the solution
mu0=4*pi*1E-7; // in H/m (absolute permeability)
//calculate
H=(B/mu0)-I; // calculation of magnetic force
printf('\nThe magnetic force is  \tH=%.3f',H);
mu_r=(I/H)+1; // calculation of relative permeability
printf('\nThe relative permeability is \t%.3f',mu_r);
