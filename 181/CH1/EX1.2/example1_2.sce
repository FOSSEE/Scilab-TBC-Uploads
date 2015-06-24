// Calculate semiconductor band gap
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 1-2 in page 7

clear; clc; close;

// Data given
lambda=0.5*10^-6; // Wavelength of emitted light in m
c=3*10^8; // Speed of light in vacuum in m/s
h=1.05*10^-34;// Constant of calculation

// Calculation
E_g= (2*%pi*h*c)/lambda;
A= E_g*10^19/1.6;

printf("The material band gap has to be %0.3f eV",A);

// Result
//The material band gap is 2.474 eV
// Semiconductors like C,BN,GaN,SiC meet this criterion