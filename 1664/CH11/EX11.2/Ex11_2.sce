
//Example NO.11.2
//Page No.335
//To find electronic polarizability of He gas.
clc;clear;
E0 = (8.854*10^-12);
Er = (1.0000684);//Dielectric constant of He-gas
N = (2.7*10^25);//Concentration of dipoles -[per m^3].
P = (E0*(Er-1));
a = (P/(N));
a = (P/(2.7*10^25));//Electronic polarizability.
printf("\nElectronic polarizability of He gas is %3.3e F m^2",a);
