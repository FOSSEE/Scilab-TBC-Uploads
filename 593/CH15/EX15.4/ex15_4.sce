clear;
//clc();

// Example 15.4
// Page: 403
printf("Example-15.4  Page no.-403\n\n");

//***Data***//
// We have been given the reaction 
// CaCO3(s) = CaO(s) + CO2(g)

// Here we have three species and one balanced chemical reaction between them
// So
N = 3;// No of species
Q = 1; // no of reaction

// Since CO2 will mostly be in the gas phase and CaCO3 and CaO will each form separate solid phases, 
// there is no equation we can write among the mole fractions in any of the phases.
// Hence, there is no stoichiometric restriction i.e.
SR = 0
// and the number of the components is
C = N - Q - SR;

printf("Number of the components presents in the test tube are %0.0f",C);