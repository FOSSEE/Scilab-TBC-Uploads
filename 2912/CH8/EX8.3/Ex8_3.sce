//chapter 8
//example 8.3
//Calculate relative permeability of a ferromagentic material
//page 236
clear;
clc;
//given
H=220; // in A/m (magnetic field intensity)
I=3300; // in A/m (intensity of magnetisation)
//calculate
mu_r=1+(I/H); // calculation of relative permeability
printf('\nThe relative permeability of a ferromagentic material is  %.f',mu_r);
