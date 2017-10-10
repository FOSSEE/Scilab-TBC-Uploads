//Calculate the Translational Partition function of a Helium atom 

//Example 23.2

clc;

clear;

m=4.003*1.661*10^-27; //Mass of Helium atom in kg amu^-1

KB=1.381*10^-23; //Boltzmann's constant in J K^-1

T=298; //Temperature in K

h=6.626*10^-34; //Planck's constant in J s

V=1; //Volume of container in m^3

Qtrans=(((2*%pi*m*KB*T)^(3/2))*V)/h^3;  //Translational Partition function of a Helium atom (1 J=1 kg m^2 s^-2)

printf("Translational Partition function of a Helium atom = %.2f*10^30",Qtrans*10^-30);
