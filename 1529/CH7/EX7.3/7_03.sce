//Chapter 7, Problem 3
clc;
H=8000;                             //Magnetic field strength
d=30*10^-2;                         //Diameter of coil
l=%pi*d;                        //Length 
N=750;                          //No of turns
I=(H*l)/N;                      //Calculating current in the coil
printf("Current in the coil = %f A",I);
