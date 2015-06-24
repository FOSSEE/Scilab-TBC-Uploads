//chapter 2
//example 2.2
//calculate distance between two nearest Cu atoms
//page 41
clear;
clc;
//given
N=6.02E23; // in /gram-atom (Avogadro's number)
n=4; // number of atom per unit cell for fcc structure
M=63.5; //in gram/gram-atom (atomic weight of Cu)
p=8.96; // in g/cm^3 (density)
//calculate
a=nthroot((n*M/(N*p)),3);
printf('\nThe lattice constant is\ta=%1.2E cm',a); 
a=a*1E8; // changing unit from cm to Angstrom
printf('\n\t\t\ta=%.2f Angstrom',a); 
d=a/sqrt(2); // distance infcc lattice
printf('\nThe distance between two nearest Cu atoms is \td=%.2f Angstrom',d);
