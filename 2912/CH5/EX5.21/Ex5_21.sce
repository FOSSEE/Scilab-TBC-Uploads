//chapter 5
//example 5.21
//Calculate uncertainty in the energy of the photon 
//page 111
clear;
clc;
//given
dt=1E-12; // in sec (average life time)
h=6.63E-34; // in J-s (Planck'c constant)
pi=3.14; // value of pi used in the solution
e=1.6*1E-19; // in C (charge of electron)
//calculate
// Since dE*dt>=h/(4*pi)  (uncertainty relation for energy)
dE=h/(4*pi*dt); // calculation of minimum uncertainty in the energy
printf('\nThe uncertainty in the energy of the photon is \tdE=%1.2E J',dE);
dE=dE/e; //changing unit from J to eV
printf('\n\t\t\t\t\t\t  =%1.1E eV',dE);
