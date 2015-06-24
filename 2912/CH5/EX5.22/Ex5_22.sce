//chapter 5
//example 5.22
//Calculate minimum error in the energy
//page 111-112
clear;
clc;
//given
dT=2.5E-14; // in sec (average life time)
h=6.63E-34; // in J-s (Planck'c constant)
pi=3.14; // value of pi used in the solution
e=1.6*1E-19; // in C (charge of electron)
//calculate
// Since dE*dt>=h/(4*pi)  (uncertainty relation for energy)
dE=h/(4*pi*dT); // calculation of minimum uncertainty in the energy
printf('\nThe uncertainty in the energy of the photon is \tdE=%1.1E J',dE);
dE=dE/e; //changing unit from J to eV
printf('\n\t\t\t\t\t\t  =%1.1E eV',dE);
