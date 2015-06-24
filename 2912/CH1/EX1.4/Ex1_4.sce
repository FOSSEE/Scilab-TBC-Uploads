//chapter 1
//example 1.4
//calculate bond energy for NaCl
//page 15-16
clear;
clc;
//given
r0=0.236; //in nanometer(interionic distance)
e=1.6E-19; // in C (charge of electron)
E_o= 8.85E-12;// absolute premittivity
N=8; // Born constant
IE=5.14;// in eV (ionisation energy of sodium)
EA=3.65;// in eV (electron affinity of Chlorine)
pi=3.14; // value of pi used in the solution
//calculate
r0=r0*1E-9; // since r is in nanometer
PE=(e^2/(4*pi*E_o*r0))*(1-1/N); // calculate potential energy
PE=PE/e; //changing unit from J to eV
printf('\nThe potential energy is\tPE=%.2f eV',PE); 
NE=IE-EA;// calculation of Net energy
printf('\nThe net energy is\tNE=%.2f eV',NE);
BE=PE-NE;// calculation of Bond Energy
printf('\nThe bond energy is\tBE=%.2f eV',BE);
// Note: (1)-In order to make the answer prcatically feasible and avoid the unusual answer, I have used r_0=0.236 nm instead of 236 nm. because using this value will give very much irrelevant answer.
//       (2) There is slight variation in the answer due to round off.
