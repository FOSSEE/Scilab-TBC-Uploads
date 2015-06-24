//Chapter 9, Problem 10
clc;
E=1.5*10^3;                     //emf
dI=4;                           //change in flux
dt=8*10^-3;                     //change in time
D=dI/dt;
L=E/D;
printf("Inductance L = %d H",L);
