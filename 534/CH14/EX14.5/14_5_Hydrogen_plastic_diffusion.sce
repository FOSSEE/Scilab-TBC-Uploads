clear;
clc;
printf('FUNDAMENTALS OF HEAT AND MASS TRANSFER \n Incropera / Dewitt / Bergman / Lavine \n EXAMPLE 14.5   Page 904 \n')// Example 14.5

// The Hydrogen mass diffusive flux nA (kg/s.m^2)
//A -> Hydrogen
//B -> Plastic

Dab = 8.7*10^-8        ;//[m^2/s] Diffusion coefficient
Sab = 1.5*10^-3        ;//[kmol/m^3.bar] Solubility
L = .0003              ;//[m] thickness of bar
p1 = 3                ;//[bar] pressure on one side
p2 = 1                ;//[bar] pressure on other side
Ma = 2                ;//[kg/mol] molecular mass of Hydrogen
//Surface molar concentrations of hydrogen from Equation 14.62
Ca1 = Sab*p1       ; //[kmol/m^3]
Ca2 = Sab*p2       ; //[kmol/m^3]
//From equation 14.42 to 14.53 for obtaining mass flux
N = Dab/L*(Ca1-Ca2) ;       //[kmol/s.m^2]
n = Ma*N            ;       //[kg/s.m^2] on Mass basis

printf('\n The Hydrogen mass diffusive flux n = %.2e (kg/s.m^2)',n);
//END