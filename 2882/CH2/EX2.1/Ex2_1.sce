//Tested on Windows 7 Ultimate 32-bit
//Chapter 2 Fundamental Concepts: Energy Bands in Solids Pg no. 49
clear;
clc;

//Given Data
m0=9.1D-31;//mass of electron in kg
e=1.602D-19;//charge on a electron in Coulombs
e0=8.854D-12;//electric permittivity of air
h=6.625D-34;//planck's constant in Joules-sec
n=2;//index of the Bohr orbit

//Solution

KE=(m0*e^4)/(8*e0^2*n^2*h^2);//Kinetic Energy  of electron in Joules
KE=KE/(1.6D-19);//Converting it into electron volts eV

PE=-(m0*e^4)/(4*e0^2*n^2*h^2);//Potential Energy  of electron in Joules
PE=PE/(1.6D-19);//Converting it into electron volts eV

TE=KE+PE;//Total energy is the sum of kinetic and potential energy of electron

printf("Kinetic Energy=%.1f eV \n Potential Energy=%.1f eV \n Total Energy=%.1f eV",KE,PE,TE);
