//A Textbook of Chemical Engineering Thermodynamics
//Chapter 9
//Chemical Reaction Equilibria
//Example 22


clear;
clc;


//Given:
//Reaction: FeO(s) + CO(g) --> Fe(s) + CO2(g)
K = 0.403; //equilibrium constant of reaction
T = 1200; //temperature of reaction (K)
To = 273; //standard temperature (K)
Vo = 22.4*10^-3; //molar volume at STP 
M = 55.8; //molecular mass of iron

//To calculate wt of iron produced per 100 m^3 of gas admitted
//Basis: 100 mol of gas entering
n = 100; //moles of gas entering
n_C = 20; //moles of carbon mono oxide
n_N = 80; //moles of nitrogen

//Let e be the extent of reaction
//Mole fractions in equilibrium mixture
//CO = (20-e)/100
//CO2 = e/100
//e/(20-e) = K
e = (20*K)/(1+K);
n_CO2 = e; //moles of CO2 at equilibrium
n_Fe = n_CO2; //by stoichiometry
V = (n*Vo*T)/To; //volume of 100 mol of gas at 1200 K and 1 bar

//Let m be iron produced per 100 m^3 gas
m = (n_Fe*100*M)/V;
mprintf('Iron produced per 100 cubic m of gas is %f kg',m/1000);

//end