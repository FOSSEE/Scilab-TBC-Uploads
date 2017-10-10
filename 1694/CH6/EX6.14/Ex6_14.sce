clear;
clc;
printf("\nEx-6.14\n");
//page no.-190
//given
v=10^6;.......//avg velocity in m.s
rho=1.673*10^-8;..//resistivity in ohm m
n0=8.48*10^28;.........//no. of electrons per unit vol
e=1.6*10^-19;......//charge in C
m=9.11*10^-31;......//mass of e in kg

tau=m/(no*e^2*rho)........//mean collission time in s

printf("\nmean collision time is 2.51*10^-14 s\n");

lambda=v*tau............//mean free path in m

printf("\nmean free path 2.51*10^-8 m");

