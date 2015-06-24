//A Textbook of Chemical Engineering Thermodynamics
//Chapter 9
//Chemical Reaction Equilibria
//Example 19


clear;
clc;


//Given:
//Reaction: 1/2N2 + 3/2H2 --> NH3
Kp = 1.25*10^-2 ;//equilibrium constant
P = 50; //pressure in bar
v = 1-(3/2)-(1/2); //change in number of moles in reaction

//Initial composition of gas mixture
n_h = 60;
n_n = 20;
n_inert = 100-n_h-n_n;

//To determine the composition of gases leaving the reactor
//Mole fractions in the equilibrium mixture
//N2: [20-(e/2)]/(100-e)
//H2: [60-(3e/2)]/(100-e)
//NH3: e/(100-e)

Ky = Kp*(P^-v);
//e/(100-e)/[(20-(e/2)]^1/2[{60-(3e/2)}/(100-e)]^3/2 = Ky

e = poly(0,'e');
f = (1.6875*Ky^2-1)*e^4 - (270*Ky^2+200)*e^3 + (16200*Ky^2-10000)*e^2 - (334800*Ky^2)*e + 4320000*Ky^2;
x = roots(f);
e = x(4);

//x(4) being the only positive root is the percentage conversion
//Mole fractions in equilibrium mixture
x_n = (20-(e/2))/(100-e);
x_h = (60-3*(e/2))/(100-e);
x_a = e/(100-e);
x_inert = 1 - x_n - x_h - x_a;

mprintf('Composition of gas leaving the reactor is');
mprintf('\n Nitrogen  : %f percent',x_n*100);
mprintf('\n Hydrogen  : %f percent',x_h*100);
mprintf('\n Ammonia   : %f percent',x_a*100);
mprintf('\n Inert gas : %f percent',x_inert*100);

//end