clear;
clc;
printf("\nEx-6.24\n");
//page no.-195
//given
rho=1.73*10^-8;......//resistivity in ohm m
M=63.5;...........//atomic weight
d=8.92*10^3;......//density in Kg/m^3
N=6.023*10^23;......//avagadro no.
e=1.6*10^-19;.......//charge
m=9.11*10^-31;......//mass of e

no=(N*d)/M........//no of electrons per unit volume

printf("\nno. of electrons/ unit volume 8.463*10^25 /m^3\n");

mu=1/(rho*no*e).........//mobility

printf("\nmobility is 4.1145 m^2/Vs\n");

tau=m/(no*e^2*rho)..........//relaxation time

printf("\nrelaxation time is 2.25*10^-11 s");
