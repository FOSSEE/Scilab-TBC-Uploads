//Calculate the Wavelength in nanometer for transition in Hydrogen atom

//Example 14.3

clc;

clear;

nf=2;  //Quantum number for emmision process (n=4 to 2)

ni=4; //Quantum number for emmision process (n=4 to 20)

RH=109737;  //Rydberg constant in cm^-1

new=RH*abs((1/ni^2)-(1/nf^2));  //Frequency in cm^-1

Lemda1=1/new;  //Wavelength in cm

Lemda=Lemda1*10^7 //Wavelength in nm

printf("Wavelength = %.0f nm",Lemda);
