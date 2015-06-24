//computation of molar concentration from osmotic pressure

clear;
clc;
funcprot(0);

printf("\t Example 12.9\n");

pie=30;//osmotic pressure, atm
R=0.0821;//gas constant, L atm/K mol
T=298;//temp., K
M=pie/(R*T);//molar concentration, M

printf("\t the molar concentration is : %4.2f M\n",M);

//End
