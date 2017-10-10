//To Calculate the Wavelength of Radiation for Helium Ion

//Example 43.2

clear;

clc;

n=2;//Final State of the electron

m=3;//Initial State of the Electron

R=1.0973*10^7;//Rydberg's Constant

Z=2;//Atomic Number for Helium Ion

L=1/(R*Z^2*((1/n^2)-(1/m^2)));//Wavelength of radiation emitted when Helium ion make a transition from the state n=3 to n=2

printf("Wavelength of radiation emitted when Helium ion makes a transition from the state n=3 to n=2 is = %.0f nm",L*10^9);
