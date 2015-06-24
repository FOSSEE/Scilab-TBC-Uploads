//Chapter 9, Problem 13
clc;
N=800;                              //no of turns
phi=5*10^-3;                        //flux
I=4;                                //current in coil
L=(N*phi)/I;                        //calculating inductance
printf("Inductance of coil = %f H",L);
