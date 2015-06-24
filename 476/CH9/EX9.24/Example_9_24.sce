//A Textbook of Chemical Engineering Thermodynamics
//Chapter 9
//Chemical Reaction Equilibria
//Example 24


clear;
clc;


//Given:
//A system consisting of CO, CO2, H2, H2O, CH4

//To determine the number of degrees of freedom

//Formation reactions for each of compounds is written
//a. C + 1/2O2 --> CO
//b. C + O2 --> CO2
//c. H2 + 1/2O2 --> H2O
//d. C + 2H2 --> CH4

//Elements C and O2 are not present, so they are to be eliminated
//Combining a and b
//e. CO2 --> CO + 1/2O2

//Combining a and d
//f. CH4 + 1/2O2 --> CO + 2H2

//Combining c and e
//g. CO2 + H2 --> CO + H2O

//Combining c and f
//h. 3H2 + CO --> CH4 + H2O

//Equations g and h represent independent chemical reactions, so
r = 2;
C = 5; //no. of components
pi = 1; //no. of phases

//From eq. 9.90 (Page no. 438)
F = C-pi-r+2;
mprintf('The number of degrees of freedom are %i',F);

//end