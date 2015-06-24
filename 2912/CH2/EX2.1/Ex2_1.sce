//chapter 2
//example 2.1
//calculate lattice constant
//page 40-41
clear;
clc;
//given
N=6.02E26; // in /Kg-molecule (Avogadro's number)
n=4; // number of molecules per unit cell ofr NaCl
M=58.5; // in Kg/Kg-molecule (molecular weight of NaCl)
p=2189; // in Kg/m^3 (density)
//calculate
a=nthroot((n*M/(N*p)),3);
printf('\nThe lattice constant is\ta=%1.2E m',a); 
a=a*1E10; // changing unit to Angstrom
printf('\n\t\t\ta=%.2f Angstrom',a); 
