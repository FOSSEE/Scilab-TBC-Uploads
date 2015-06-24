//chapter 1
//example 1.3
//calculate potential energy
//page 15
clear;
clc;
//given
r=2; //in angstrom(distance)
e=1.6E-19; // in C (charge of electron)
E_o= 8.85E-12;// absolute premittivity
//calculate
r=2*1E-10; // since r is in angstrom
V=-e^2/(4*%pi*E_o*r); // calculate potential
printf('\nThe potential energy is \tV=%3.3E J',V);
V=V/e; // changing to eV
printf('\nIn electron-Volt,\tV=%.2f eV',V); 
// Note: the answer in the book is wrong due to calculation mistake
