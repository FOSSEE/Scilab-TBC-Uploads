//chapter 5
//example 5.23
//Calculate energy corresponding to the 2nd and 4th quantum states
//page 112
clear;
clc;
//given
a=2; // in Angstrom (length of the box)
m=9.1E-31; // in Kg (mass of electron)
h=6.626E-34; // in J-s (Planck'c constant)
n2=2, n4=4; //  two quantum states
e=1.6*1E-19; // in C (charge of electron)
//calculate
a=a*1E-10; // since a is in Angstrom 
// Since  E_n=n^2*h^2/(8*m*a^2)   (Energy corresponding to nth quantum state)
E2=n2^2*h^2/(8*m*a^2); // calculation of energy corresponding to the 2nd quantum state
printf('\nThe energy corresponding to the 2nd quantum state is \tE2=%1.3E J',E2);
E2=E2/e; //changing unit from J to eV
printf('\n\t\t\t\t\t\t\t  =%1.4E eV',E2);
E4=n4^2*h^2/(8*m*a^2); // calculation of energy corresponding to the 4nd quantum state
printf('\nThe energy corresponding to the 4nd quantum state is \tE4=%1.3E J',E4);
E4=E4/e; //changing unit from J to eV
printf('\n\t\t\t\t\t\t\t  =%1.4E eV',E4);
// Note: The answer in the book is wrong due to calculation mistake
