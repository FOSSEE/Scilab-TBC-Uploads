// Exa 7.6

clc;
clear;

// Given data

// A notch filter
fo=50; // cutoff frequency for notch filter(Hz)

//Solution

printf('As Given fo=50 Hz. Let C=0.1 μF.');
C=0.1*10^-6; // Farads
// since fo=1/(2*%pi*R*C);
// Therefore R -
R=1/(2*%pi*fo*C);
printf(' \n For R/2, take two resistors of 31.8 k Ohms in parallel and for 2C,\n take two 0.1 mocroFarads capacitors in parallel to make the twin-T notch filter\n as shown in Fig. 7.15(a) on page no. 279 where resistors R1 and R2 are for adjustment of gain.\n ')
