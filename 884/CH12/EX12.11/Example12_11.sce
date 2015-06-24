//computation of molar mass of a sample from osmotic pressure

clear;
clc;
funcprot(0);

printf("\t Example 12.11\n");

R=0.0821;//gas constant, L atm/K mol
T=298;//temp, K
pie=10/760;//osmotic pressure, atm
M=pie/(R*T);//molarity of the solution, M

//taking 1L of solution
mass=35;//mass of Hg, g
n=M;//moles
molarmass=mass/n;//molar mass of hemoglobin, g/mol

printf("\t the molar mass of the hemoglobin is : %4.2f *10^4 g/mol \n",molarmass*10^-4);

//End
