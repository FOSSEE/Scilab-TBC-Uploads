
//Example NO.11.6
//Page No.337
clc;clear;
E0 = (8.854*10^-12);
P = (4.3*10^-8);//polarization -[C/m^2].
E = 1000;//Electric field -[V/m].
Er = ((P/(E0*E))+1);//Relative permittivity of the crystal.
printf("\nRelative permittivity of the crystal is %.3f",Er);

//Last statement of this numerical is wrong in the textbook.Here we have to find relative permittivity of the crystal and not the dielectric constant.//
