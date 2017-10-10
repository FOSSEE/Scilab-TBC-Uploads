clear;
clc;
printf("\nEx1.22\n");
//page no.-33
//given
M=58.8;...........//molecular wt. of NaCl
N=6.023*10^23;....//avagadro no. in gm/mol
mo=2.18;..........//mass of unit volume of NaCl

m=M/N;..........//mass of NaCl molecule in gm

no=mo/m;.........//no. of molecules per unit volume in mole/cm^3
//as NaCl is diatomic

n=2*no...........//no. of atoms per unit volume of NaCl in atoms/cm^3
//as volume of unit cube is n^3*a=1

a=(1/n)^(1/3).....//distance between adjacent atoms in NaCl in cm

printf("\ndistance between two adjacent atoms is 2.81 angstrom\n");
