// Computation of no. of atoms from mass of a compound

clear;
clc;

printf("\t Example 3.7\n");

Na=6.07*10^23;// Avogadro number, atoms/mol
Mass=25.6;//mass of Urea, g
MolMass=60.06;//mol. mass of Urea, g
moles=Mass/MolMass;//moles of Urea, mol
Atoms=moles*Na*4;//No. of atoms of Hydrogen

printf("\t the no. of atoms of hydrogen are : %4.2f*10^24 atoms\n",Atoms*10^-24);

//End
