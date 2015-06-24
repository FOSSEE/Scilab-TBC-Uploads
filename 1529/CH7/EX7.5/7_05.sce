//Chapter 7, Problem 5
clc;
B=0.25;                         //Magnetic flux density
u0=4*%pi*10^-7;                 //permeability of free space
l=12*10^-3;                     //Length
H=B/u0;                         //Calculating magnetic field strength
mmf=H*l;                        //Calculating magnetomotive force
printf("Magnetic field strength = %d A/m\n\n\n",H);
printf("m.m.f = %d A",mmf);
