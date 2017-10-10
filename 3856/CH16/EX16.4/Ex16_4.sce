//Calculate the Potential Energy of Interaction between two Argon atoms

//Example 16.4

clc;

clear;

alpha=1.66*10^-30; //Proportionality constant in m^3

I=1521; //Ionization energy of Argon in kJ mol^-1

r=4.0*10^-10; //Distance between two Argon atoms

V=-((3/4)*(alpha^2)*(I))/(r^6);  //Potential energy of interaction between two Argon atoms in kJ mol^-1

printf("Potential energy of interaction between two Argon atoms = %.2f kJ mol^-1",V);
