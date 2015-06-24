//Example 8.1
//Program to determine the Quantum efficiency and Responsivity of
//the photodiode

clear;
clc ;
close ;

//Given data
Lambda=0.85*10^-6;               //metres - WAVELENGTH
e=1.602*10^(-19);                //Coulumbs - CHARGE OF AN ELECTRON
h= 6.626*10^(-34);               //J/K - PLANK's CONSTANT
c=2.998*10^8;                    //m/s - VELOCITY OF LIGHT IN VACCUM
Ne=1.2*10^11;                    //NUMBER OF ELECTRONS COLLECTED
Np=3*10^11;                      //NUMBER OF INCIDENT PHOTONS

//Quantum Efficiency
eeta=Ne/Np;

//Responsivity
R=eeta*e*Lambda/(h*c);

//Displaying the Results in Command Window
printf("\n\n\t Quantum Efficiency = %0.1f .",eeta);
printf("\n\n\t Responsivity, R = %0.3f A/W .",R);