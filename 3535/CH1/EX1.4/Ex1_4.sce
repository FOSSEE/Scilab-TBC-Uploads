//Chapter 1, Example 1.4, Page 23
clc
clear
//Density of Hydrogen atom in water
p = 1 // density of water in g cm^-3
Na = 6.022*10^23 // molucules/mol
A = 18 // atomic weight of water in g/mol
N = (p*Na)/A
NH = 2*N
printf("The density of water = %e molecules/cm3",N);
printf("\n The density of hydrogen atoms = %e atoms/cm3",NH);
//Answers may vary due to round off error
