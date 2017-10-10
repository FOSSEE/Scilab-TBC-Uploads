clear;
clc;
printf("\nEx-6.12\n");
//page no.-189
//given
rho=1.42*10^-8;.....//resistivity of wire in ohm m
E=0.14;.............//electric field in V/m
n0=6*10^28;.........//no. of electrons per unit vol
m=9.11*10^-31;......//mass of e in kg
e=1.6*10^-19;......//charge in C

tau=(m)/no*e^2*rho.........//mean collission time in s

printf("\nmean collission time is 4.236*10^-14 s\n");

v=((e*E)/m)*tau.........//avg drift velocity in m/s

printf("\navg. drift velocity is 1.04*10^-3 m/s");
