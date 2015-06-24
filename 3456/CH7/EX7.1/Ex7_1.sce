//Example 7.1
//Cohesive Strength
//Page No. 245
clc;clear;close;

E=95;               //in GPa
E=E*10^9;             //conversion to Pa
Ys=1000;               //erg/cm^2
Ys=Ys*10^-3;                 //conversion to J/m^2
a0=1.6;              //in angstrom
a0=a0*10^-10;                   //conversion to m
sigma_max=(E*Ys/a0)^(1/2)
sigma_max=sigma_max*10^-9;
printf('Cohesive strength of a silica fiber = %g GPa',sigma_max);
