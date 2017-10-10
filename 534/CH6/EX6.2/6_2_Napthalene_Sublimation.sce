clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 6.2   Page 356 \n'); //Example 6.2
// Napthalene Sublimation rate per unit length

//Operating Conditions

h = .05;          //[W/m^2.K] Heat Convection coefficient
D = .02;          //[m] Diameter of cylinder
Cas = 5*10^-6;    //[kmol/m^3] Surface molar Conc
Casurr = 0;       //[kmol/m^3] Surrounding molar Conc
Ma = 128;         //[Kg/kmol] Molecular weight

//From Eqn 6.15
Na = h*(%pi*D)*(Cas-Casurr);
na = Ma*Na;

printf("\n\n Mass sublimation Rate is = %.2e kg/s.m ", na);
//END