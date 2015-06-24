clc
clear 
printf("example 2.7 page number 73\n\n")

//to find the volume of sulphuric acid and mass of water consumed

density_H2SO4 = 1.10   //in g/ml
mass_1 = 100*density_H2SO4;   //mass of 100ml of 15% solution
mass_H2SO4 = 0.15*mass_1;
density_std = 1.84   //density of 96% sulphuric acid
mass_std = 0.96*density_std;   //mass of H2SO4 in 1ml 96% H2SO4

volume_std = mass_H2SO4/mass_std;    //volume of 96%H2SO4
mass_water = mass_1 - mass_H2SO4;

printf("volume of 0.96 H2SO4 required = %f ml",volume_std)
printf("\nmass of water required = %f g",mass_water)
