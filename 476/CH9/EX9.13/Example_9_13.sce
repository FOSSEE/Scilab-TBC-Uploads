//A Textbook of Chemical Engineering Thermodynamics
//Chapter 9
//Chemical Reaction Equilibria
//Example 13


clear;
clc;


//Given:
//Reaction: N2 + 3H2 --> 2NH3
K = 2*10^-4; //equilibrium constant of reaction

//To determine the percent conversion:

//Basis:
//1 mole nitrogen and 3 moles of hydrogen in the reactant mixture
//Let e be the extent of reaction
//Using eq. 9.3 (Page no. 400)
//mol fraction of nitrogen is (1-e)/(4-2e)
//mol fraction of hydrogen is (3-3e)/(4-2e)
//mol fraction of ammonia is 2e/(4-2e)
//so, ([2e/(4-2e)]^2)/[(1-e)/(4-2e)][3(1-e)/(4-2e)]^3 = K*P^2

//(a)
P = 20; //(bar)
//e(4-2e)/(1-e)^2 = 0.73485
e = poly(0,'e');
f = 2.73845*e^2 - 5.4697*e + 0.73485;
x = roots(f);
mprintf('(a) Percentage conversion is %f percent',x(2)*100);


//(b)
P = 200; //(bar)
//e(4-2e)/(1-e)^2 = 7.3485
e = poly(0,'e');
f = 9.3485*e^2 - 18.697*e + 7.3485;
x = roots(f);
mprintf('\n\n (b) Percentage conversion is %f percent',x(2)*100);

//end