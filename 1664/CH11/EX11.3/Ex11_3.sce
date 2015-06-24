

//Example NO.11.3
//Page No.336
clc;clear;
E0 = (8.854*10^-12);
Er = (6);//Dielectric constant.
E = 100;//Electric field intensity -[V/m].
P = (E0*(Er-1)*E);//Polarization.
printf("\nPolarization produced in a dielectric medium is %3.3e C/m^2",P);
