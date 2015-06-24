// Calculate wave vector carried by photon
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 1-1 in page 7

clear; clc; close;

// Given data
c=3*10^8; // Speed of light in m/s
h=6.64*10^-34;// Planks constant in Js
E_photon=2*1.6*10^-19; // Energy of photon in J

//Calculations
lambda=(c*h)/E_photon; 
k=(2*%pi/lambda);

printf("The wavelenght of a 2.0eV photon = %0.3e m\n",lambda);
printf("The magnitude of k vector = %0.2e m^-1",k);

// Results
// The wavelength of a 2.0 eV photon is 6225 Angstrom
// The magnitude of k-vector is 1.01 * 10^7 m^-1
