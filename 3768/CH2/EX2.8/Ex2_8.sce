//Example number 2.8, Page number 34
clc;clear;
close;

// Variable declaration
N=6.023*10**23;           // Avagadro Number
Mw=23+35.5;        // molecular weight of NaCl
rho=2.18;    // density(gm/cm**3)

// Calculation
M=Mw/N;        // mass of 1 molecule(gm)
Nv=rho/M;      // number of molecules per unit volume(mole/cm**3)
Na=2*Nv;     // number of atoms
a=(1/Na)**(1/3)*10**8;   // distance between atoms(angstrom)

// Result
printf( "distance between atoms is %.2f Angstrom",a)

