clear;
clc;
printf("\nEx3.5\n");
//page no.-122
//given
h=6.63*10^-34;........//planck's constant in Js
m=9.11*10^-31;........//mass of electron in kg
l=2.5*10^-10;............//width of box in m
n1=2;...................//quantum no. for second lowest state
n2=3;...................//quantum no. for third lowest state
e=1.6*10^19;...........//charge

E1=(h^2)/(8*m*l^2*e)..........//first lowest quantum energy

E2=(n1^2)*E1.............//second lowest quantum energy

E3=(n2^2)*E1............//third lowest quantum energy

printf("\nlowest permissible quantum energies are 6 eV,24 eV, 54 eV\n");
