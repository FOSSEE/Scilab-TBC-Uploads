//Chapter 9, Problem 15
clc;
L=0.60;                         //inductance
I=1.5;                          //current in coil
phi=90*10^-6;                   //flux
N=(L*I)/phi;                    //calculating no of turns
printf("No of turns = %d turns",N);
