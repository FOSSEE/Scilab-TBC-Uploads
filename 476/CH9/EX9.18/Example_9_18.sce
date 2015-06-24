//A Textbook of Chemical Engineering Thermodynamics
//Chapter 9
//Chemical Reaction Equilibria
//Example 18


clear;
clc;


//Given:
//Reaction: CO(g) + 2H2(g) --> CH3OH(g)
Kf = 4.9*10^-5;
Kfi = 0.35;
P = 300; //pressure in bar

//To evaluate the percent conversion of CO
//Basis: 100 moles of initial gas mixture
n_CO = 25;
n_H2 = 55;
n_inert = 20;
v = -1-2+1; //change in number of moles in reaction

//Mole fractions in the equilibrium mixture
//CO = (25-e)/(100-2e)
//H2 = (55-2e)/(100-2e)
//CH3OH = e/(100-2e)

Ky = (Kf/Kfi)*P^(-v);
//[e/(100-2e)]/[(25-e)/(100-2e)][(55-2e)/(100-2e)]^2 = Ky, so

e = poly(0,'e');
f = (4+4*Ky)*e^3 - (400+320*Ky)*e^2 + (10000+8525*Ky)*e - 75625*Ky
x = roots(f);

conv = x(3)/n_CO; //first two roots are complex
mprintf('Percentage conversion of CO is %f percent',conv*100);

//end
