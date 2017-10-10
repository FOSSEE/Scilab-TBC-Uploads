
//To Calculate the Magnetic Field at the Centre of Coil

//Example 35.4

clear;

clc;

i=1.5;//Current Carried by the Circular Coil in Amperes

n=25;//Number of turns in the coil

a=1.5*10^-2;//Radius of the Circular coil in metres

u0=4*%pi*10^-7;//Permeability of Vaccum

B=u0*i*n/(2*a);//formula for finding the magnetic field at the centre

printf("Magnetic Field at the Centre of Coil = %.2f*10^-3 T",B*10^3);
