clear;
clc;

//Example - 17.21
//Page number - 624
printf("Example - 17.21 and Page number - 624\n\n");

// Given
P = 2;// Number of phases
C = 5;// Number of components

// First we write chemical equations for formation of each component from basic elements
// C + 2*H2 = CH4   // (reaction 1) 
// H2 + (1/2)*O2 = H20  // (reaction 2)
// C + (1/2)*O2 = CO  // (reaction 3)
// C + O2 = CO2  // (reaction 4)

// We do not have C in the equilibrium reaction mixture, therefore we have to eliminate it.
// Substituting for C from reaction (1) into reactions (3) and (4) we get the following set of reactions
// H2 + (1/2)*O2 = H20
// CH4 - 2*H2 + (1/2)*O2 = CO
// CH4 - 2*H2 + O2 = CO2

// or,
// H2 + (1/2)*O2 = H2O
// CH4 + (1/2)*O2 = CO + 2*H2
// CH4 + O2 = CO2 + 2*H2

// We do not have O2 in the equilibrium reaction mixture,therefore we have to eliminateit
// Substituting for O2 from the first reaction of the above set into seecond and third reactions of the above set we get the following set of reactions.
// CH4 + H2O - H2 = CO + 2*H2
// CH4 + 2*H20 - 2*H2 = CO2 + 2*H2 

// Therefore one set of independent reactions is
// CH4 + H20 = CO + 3*H2
// CH4 + 2*H2O = CO2 + 4*H2

// Another set of independent reactions can be obtained by substituting for CH4 from the first reaction into second and we get
// CH4 + H2O = CO + 3*H2
// CO + 3*H2 - H2O + 2*H2O = CO2 4*H2

// Or, 
// CH4 + H2O = CO + 3*H2
// CO + H2O = CO2 + H2
// This is another set of independent reactions. Thus whatever be the set of independent reactions, the number of independent reactions are two
// If different set of reactions are considered, then we get different equilibrium constants,different reaction coordinates but the final composition will be same
// Thus only 2 independent reactions occur,therefore 
r = 2;

// and the number of degree of freedom becomes,
F = r - P + C;

printf(" The number of independent chemical reactions are %f \n\n",r);

printf(" The first set of independent reactions are given below\n");
printf(" CH4 + H20 = CO + 3*H2\n");
printf(" CH4 + 2*H2O = CO2 + 4*H2\n\n");

printf(" The second set of independent reactions are given below\n");
printf(" CH4 + H20 = CO + 3*H2\n");
printf(" CO + H2O = CO2 + H2");




