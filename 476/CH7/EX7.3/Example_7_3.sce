//A Textbook of Chemical Engineering Thermodynamics
//Chapter 7
//Properties of Solutions
//Example 3


clear;
clc;


//Given:
V = 2; //volume of desired solution (m^3)
x1 = 0.3; //moles fraction of methanol
x2 = 0.7; //moles fraction of water
V1 = 38.632*10^-6; //partial molar volume of methanol (m^3/mol)
V2 = 17.765*10^-6; //partial molar volume of water (m^3/mol)
mol_V1 = 40.727*10^-6; //molar volume of ethanol (m^3/mol)
mol_V2 = 18.068*10^-6; //molar volume of water (m^3/mol)

//To find the required volume of methanol and water
V_mol = (x1*V1)+(x2*V2); //molar volume of desired solution
n = V/V_mol; //no. of moles in the desired solution
n1 = x1*n; //moles of methanol
n2 = x2*n; //moles of water
V_m = n1*mol_V1;
V_w = n2*mol_V2;
mprintf('Volume of methanol to be taken is %f cubic m',V_m);
mprintf('\n Volume of water to be taken is %f cubic m',V_w);

//end