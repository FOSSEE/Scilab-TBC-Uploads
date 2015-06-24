//chapter 2
//example 2.5
//calculate distance between adjacent atoms in NaCl
//page 42-43
clear;
clc;
//given
N=6.02E23; // in /gram-molecule (Avogadro's number)
M=58.5; //in gram/gram-molecule (atomic weight of NaCl)
p=2.17; // in g/cm^3 (density)
//calculate
// since V=M/p
// (1/d)^-3=2N/V=2Np/M
// therefore d= (M/2Np)^-3
d=nthroot((M/(2*N*p)),3);
printf('\nThe distance between two adjacent atoms of NaCl is \td=%1.2E cm',d); 
d=d*1E8; // changing unit from cm to Angstrom
printf('\n\t\t\t\t\t\t\td=%.2f Angstrom',d);
