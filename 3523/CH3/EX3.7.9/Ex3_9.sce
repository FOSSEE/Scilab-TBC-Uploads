//Example 9// Ch 3
clc;
clear;
close;
// given data
d = 0.075; //density of solid atomic hydrogen in g/cm^3
N_A = 6.0224*10^23; //1g of H consists of N_A atoms
N = N_A*d; // number of atoms/cm^3
printf("no. of atoms/cm^3 %e",N)
x = 1/N;//avg volume occupied by one atom in cm^3
y = (x)^(1/3);//avg seperation between atoms in cm
printf("avg vokume occupied by one atom %e cm^3",x)
printf("avg seperation between atoms %e cm",y)
