//chapter 7
//example 7.7
//Calculate the dielectric constant of the material
//page 190
clear;
clc;
//given
N=3E28; // in atoms/m^3 (density of atoms)
alpha_e=1E-40; // in F-m^2 (electronic polarisability)
Eo=8.85E-12; // in F/m (absolute permittivity)
//calculate
// Since (Er-1)/(Er+2)=N*alpha_e/(3*Eo)
// therefore we have
Er=(2*(N*alpha_e/(3*Eo))+1)/(1-(N*alpha_e/(3*Eo)));
 // calculation of dielectric constant of the material
printf('\nThe dielectric constant of the material is \tEr=%.3f F/m',Er);
// NOTE: The answer in the book is wrong due to calculation mistake
