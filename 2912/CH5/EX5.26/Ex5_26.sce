//chapter 5
//example 5.26
//Calculate minimum energy of electron
//page 113-114
clear;
clc;
//given
a=4E-10; // in m (length of the box)
m=9.1E-31; // in Kg (mass of electron)
h=6.626E-34; // in J-s (Planck'c constant)
n1=1; //  ground state
e=1.6*1E-19; // in C (charge of electron)
//calculate
// Since  E_n=n^2*h^2/(8*m*a^2)   (Energy corresponding to nth quantum state)
E1=n1^2*h^2/(8*m*a^2); // calculation of energy corresponding to the ground state
printf('\nThe minimum energy of electron is \tE1=%1.3E J',E1);
E1=E1/e; //changing unit from J to eV
printf('\n\t\t\t\t\t  =%.3f eV',E1);
// Note: The answer in the book corresponding to J is wrong due to printing error.
