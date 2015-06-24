//Chapter 7, Problem 7
clc;
d=10*10^-2;                               //Diameter
N=2000;                                   //No of turns
I=0.25;                                   //Current in the coil
B=0.4;                                    //Magnetic flux density
u0=4*%pi*10^-7;                           //permeability of free space
l=%pi*d;                                  //Calculating length of coil
H=(N*I)/l;                                //Calculating magnetic field strength
ur=B/(u0*H);                              //Calculating relative permeability
disp("(a)");
printf("Magnetic field strength = %f A/m\n\n\n",H);
disp("(b)");
printf("Relative permeability = %d",ur);
