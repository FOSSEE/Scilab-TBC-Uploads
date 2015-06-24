//A Textbook of Chemical Engineering Thermodynamics
//Chapter 4
//Second Law of Thermodynamics
//Example 11


clear;
clc;

//Given:
//For the reaction
//CO + 1/2O2 -> CO2
H = -2.8318*10^5; //heat of reaction (J/mol)
T = 298; //temperature of reaction in K
//Absolute entropies for CO, O2, CO2 are (in J/mol K)
S_CO = 198;
S_O2 = 205.2;
S_CO2 = 213.8;

//To determine the change in entropy for the reaction
//Referring equation 4.36 (Page no. 96)
S_reactant = S_CO + 0.5*S_O2; //entropy change for reactants
S_product = S_CO2; //entropy change for products
S = S_product-S_reactant; //total entropy change
mprintf('The total entropy change for the reaction is %f J/mol',S);
mprintf('\nSince the reaction is highly irreversible, entropy change cannot be calculated as the ratio of heat of reaction to the temperature');

//The energy available for useful work is the difference between heat of reaction and entropy energy due to ireversible nature of the process
W_useful = -H+(T*S); //energy available for useful work (J)
mprintf('\nEnergy available for useful work is %3.2e J', W_useful);

//end