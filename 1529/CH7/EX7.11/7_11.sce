//Chapter 7, Problem 11
clc;
r=50*10^-3;                         //radius
A=400*10^-6;                        //cross-sectional area
I=0.5;                              //current in the coil
u0=4*%pi*10^-7;                     //permeability of free space
phi=0.1*10^-3;                      //flux
ur=200;                             //relative permeability
l=2*%pi*r;
S=l/(u0*ur*A);                      //Calculating reluctance
N=(S*phi)/I;                        //Calculating no of turns
printf("Reluctance = %f /H\n\n\n",S);
printf("Number of turns = %d turns",N);
