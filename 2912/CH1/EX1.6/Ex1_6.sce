//chapter 1
//example 1.6
//calculate ionic cohesive energy and atomic cohesive energy
//page 16
clear;
clc;
//given
r_0=3.56; // in Angstrom
e=1.6E-19; // in C (charge of electron)
IE=3.89; //in eV (ionisation energy of Cs)
EA=-3.61; // in eV (electron affinity of Cl)
n=10.5; // Born constant
E_o= 8.85E-12;// absolute premittivity
alpha=1.763; // Madelung constant
pi=3.14; // value of pi used in the solution
//calculate
r_0=r_0*1E-10; // since r is in nanometer
U=-alpha*(e^2/(4*pi*E_o*r_0))*(1-1/n); // calculate potential energy
U=U/e; //changing unit from J to eV
printf('\nThe ionic cohesive energy is\t%.2f eV',U); 
ACE=U+EA+IE; // calculation of atomic cohesive energy
printf('\nThe atomic cohesive energy is\t%.2f eV',ACE); 
