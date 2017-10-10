//Estimate the Diffusion Coeffcient of a spherical molucule

//Example 21.3

clc;

clear;

KB=1.381*10^-23; //Boltzmann's constant in J K^-1

T=300;  //Temperature in K

eta=0.00101; //Viscosity of the solvent in N s m^-2

r=1.5*10^-10; //Radius of molucule in m

D=(KB*T)/(6*%pi*eta*r); //Diffusion cofficient of a molucule in m^2 s^-1 (1 J N^-1 m s^-1=1 m^2 s^-1)

printf("Diffusion coeffcient of a spherical molucule = %.1f*10^-9 m^2 s^-1",D*10^9);
