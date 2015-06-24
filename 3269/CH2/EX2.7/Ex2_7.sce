// Example 2.7
clear all;
clc;

disp('The reactants are Nitrogen and neutron')
// The total atomic number of reactants 
Z_reactant = 7+0;
// The total atomic mass number of reactants
A_reactant = 14+1;
disp('One of the known product is Hydrogen')
Z_H = 1;                            // The atomic number of Hydrogen
A_H = 1;                            // The atomic mass number of Hydrogen 
// The atomic number of unknown element
Z_unknown = Z_reactant-Z_H;
// The atomic mass number of unknown element 
A_unknown = A_reactant-A_H;
// Result
printf(" \n For unknown element the atomic number is %d and atomic mass number is %d \n",Z_unknown,A_unknown);
// From periodic table 
disp('The element corresponds to Carbon-14');



