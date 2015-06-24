//chapter 2
//example 2.4
//calculate lattice constant
//page 42
clear;
clc;
//given
N=6.02E26; // in /Kg-atom (Avogadro's number)
n=2; // number of molecules per unit cell for bcc lattice
M=6.94; // in Kg/Kg-atom (atomic weight of Iron)
p=530; // in Kg/m^3 (density)
//calculate
a=nthroot((n*M/(N*p)),3);
printf('\nThe lattice constant is\ta=%1.3E m',a); 
a=a*1E10; // changing unit to Angstrom
printf('\n\t\t\ta=%.3f Angstrom',a); 
