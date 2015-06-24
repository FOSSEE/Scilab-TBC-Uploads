//A Textbook of Chemical Engineering Thermodynamics
//Chapter 9
//Chemical Reaction Equilibria
//Example 23


clear;
clc;


//Given:
P = 1; //pressure in bar
K1 = 0.574; //equilibrium constant for eq. 9.88 (Page no. 437)
K2 = 2.21; //equilibrium constant for eq. 9.89 (Page no. 437)

//To calculate the composition at equilibrium assuming ideal behaviour
//Let e1 and e2 be the extent of first and second reactions

v1 = 1+3-1-1;
v2 = 1+1-1-1;
Ky1 = K1*P^-v1;
Ky2 = K2*P^-v2;

//mole fractions in equilibrium mixture are:
//CH4: (1-e1)/(6+2e1)
//H2O: (5-e1-e2)/(6+2e1)
//CO: (e1-e2)/(6+2e1)
//H2: (3e1+e2)/(6+2e1)
//CO2: e2/(6+2e1)

//For 1st reaction:
//Ky1 = [(e1-e2)(3e1+e2)^3]/[(1-e1)(5-e1-e2)(6+2e1)^2]
//For 2nd reaction:
//Ky2 = [e2(3e1+e2)]/[(e1-e2)(5-e1-e2)]
//on solving, we get:
deff('[y] = f2(e)',['f_1 = [(e(1)-e(2))*(3*e(1)+e(2))^3]/[(1-e(1))*(5-e(1)-e(2))*(6+2*e(1))^2]-Ky1','f_2 = [e(2)*(3*e(1)+e(2))]/[(e(1)-e(2))*(5-e(1)-e(2))]-Ky2','y = [f_1;f_2]'])
eo = [0.9 0.6]; //initial guesses
[e,fes,m] = fsolve(eo',f2);

//Mole fraction of components:
n_m = (1-e(1))/(6+2*e(1));
n_w = (5-e(1)-e(2))/(6+2*e(1));
n_CO = (e(1)-e(2))/(6+2*e(1));
n_h = (3*e(1)+e(2))/(6+2*e(1));
n_c = e(2)/(6+2*e(1));

mprintf('Mole fraction of the components are:');
mprintf('\n Methane = %f',n_m);
mprintf('\n Water = %f',n_w);
mprintf('\n Carbon monoxide = %f', n_CO);
mprintf('\n Hydrogen = %f',n_h);
mprintf('\n Carbon dioxide = %f',n_c);

//end