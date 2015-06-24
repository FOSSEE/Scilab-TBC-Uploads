//Chapter 7, Problem 4
clc;
B=1.2;                          //Magnetic flux density
H=1250;                         //Magnetic field strength
uo=4*%pi*10^-7;                 //permeability of free space
ur=B/(uo*H);                    //Calculating relative permeability
printf("Relative permeability = %f",ur);
