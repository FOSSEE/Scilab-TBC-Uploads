// Computation of no. of atoms from mass

clear;
clc;

printf("\t Example 3.4\n");

Na=6.022*10^23;// Avogadro number, atoms/mol

mass=16.3;//mass of sulfur, g

moles=mass/32.07;//moles of S

atoms=moles*Na;//number of atoms of S

printf("\t the no. of atoms of S is : %4.2f*10^23\n",atoms*10^-23);


//End
