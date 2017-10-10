
//To calculate the mass excess of Hydrogen
//Example 46.3

clear;

clc;

u=931;//1 Atomic Mass Unit in MeV/c^2

m=1.00783;//Mass of Hydrogen atom in atomic mass unit

A=1.0;//Atomic Mass of Hydrogen atom in atomic mass unit

Me=u*(m-A);//Mass excess of Hydrogen

printf("The mass excess of Hydrogen = %.2f MeV",Me);
