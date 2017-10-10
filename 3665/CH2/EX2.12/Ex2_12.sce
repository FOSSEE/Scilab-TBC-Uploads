clc//
//
//

//Variable declaration
mw=23+35.5;     //molecular weight of NaCl(gm/mol)
N=6.023*10^23;    //avagadro number(per mol)
d=2.18;       //mass of unit volume

//Calculation
M=mw/N;     //mass of NaCl molecule(gm)
n=2*d/M;      //number of atoms per unit volume(atoms/cm^3)
a=(1/n)^(1/3);     //distance between 2 adjacent atoms(cm)

//Result
printf("\n distance between 2 adjacent atoms is %e cm = %0.2f angstrom ",a,a*10^8)

