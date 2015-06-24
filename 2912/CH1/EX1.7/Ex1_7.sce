//chapter 1
//example 1.7
//calculate contribution per ions to the cohesive energy
//page 17
clear;
clc;
//given
r_0=2.81; // in Angstrom
e=1.6E-19; // in C (charge of electron)
n=9; // Born constant
E_o= 8.85E-12;// absolute premittivity
alpha=1.748; // Madelung constant
pi=3.14; // value of pi used in the solution
//calculate
r_0=r_0*1E-10; // since r is in nanometer
V=-alpha*(e^2/(4*pi*E_o*r_0))*(1-1/n); // calculate potential energy
V=V/e; //changing unit from J to eV
printf('\nThe potential energy is\tV=%.2f eV',V); 
V_1=V/2; // Since only half of the energy contribute per ion to the cohecive energy therfore
printf('\nThe energy contributing per ions to the cohesive energy is \t%.2f eV',V_1);
 // Note: Answer in the book is wroong due to calculation mistake
