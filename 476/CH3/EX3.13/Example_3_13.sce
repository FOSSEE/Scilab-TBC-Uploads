//A Textbook of Chemical Engineering Thermodynamics
//Chapter 3
//P-V-T Behaviour and Heat Effects
//Example 13


clear;
clc;


//Given:
To = 298; //standard temperature(K)
T1 = 400; //temperature of reactants(K)
T2 = 600; //temperature of products (K)
Ho = -283.028; //standard heat of reaction(kJ/mol)

//To determine heat added or removed
//Basis:
n_CO = 1; //moles of CO reacted
n_O2 = 1;//moles of oxygen supplied
n_N2 = 1*79/21; //moles of nitrogen
n1_O2 = 0.5; //moles of oxygen required
n_CO2 = 1; //moles of carbon di oxide formed

H1 = ((n_O2*29.70)+(n_N2*29.10)+(n_CO*29.10))*(To-T1)/1000; //enthalpy of cooling of reactants
H2 = ((n1_O2*29.70)+(n_N2*29.10)+(n_CO2*41.45))*(T2-To)/1000; //enthalpy of heating the products
Hr = H1+Ho+H2;
mprintf('Heat supplied is %f kJ',Hr);

//end