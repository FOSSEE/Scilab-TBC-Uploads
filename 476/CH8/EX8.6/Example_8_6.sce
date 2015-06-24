//A Textbook of Chemical Engineering Thermodynamics
//Chapter 8
//Phase Equilibria
//Example 6


clear;
clc;


//Given:
P1 = 106; //vapour pressure of n-heptane (kPa)
P2 = 74; //vapour pressure of toluene (kPa)
P = 101.3; //total pressure (kPa)

//To determine the composition of the liquid and vapour in equilibrium
//Referring eq. 8.51 (Page no. 332)

//Let x be mol fraction of heptane in liquid
x = (P-P2)/(P1-P2);
//Using eq. 8.54 (Page no. 333)
y = x*(P1/P);

mprintf('Composition of liquid heptane is %f mol percent',x*100);
mprintf('\n Composition of heptane in vapour form is %f mol percent',y*100);

//end