clear;
clc;
printf("\nEx-6.11\n");
//page no.-189
//given
I=15;............//current in A
A=2.1*10^-6;.....//area in m^2
rho=8.95*10^3;...//density in Kg/m^3
M=63.5;..........//mass in g/mol
N=6.02*10^23;....//avagadro no.
e=1.6*10^-19;....//charge in J

no=N*rho/M........//no. of free electrons per unit vol.

printf("\nno. of free e/unit vol is 8.48*10^28 electrons/m^3\n");
v=I/(no*A*e)......//drift velocity of e

printf("\ndrift velocity of e is5.3*10^-4");

