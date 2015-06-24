//Chemical Engineering Thermodynamics
//Chapter 2
//P-V-T Relations

//Example 2.5
clear;
clc;

//Given
n = 1;//n is Kg moles of methane
T = 423;//T is the temperatue of the system in kelvin
P = 100;//P is the pressure of the system in atm
Tc = 191;//Tc is the critical temperature of the system in K
Pc = 45.8;//Pc is the critical pressure of the system in atm
R = 0.08206;//R is the gas constant in (m^3 atm/Kg mole K)

//To calculate the volume of methane
//(i)Using ideal gas equation
V1 = (n*R*T)/P;//V1 is the volume of the gas in m^3
mprintf('(i)Volume of the gas using ideal gas equation is %f cubic meter',V1);

//(ii)Using Vander Waals' equation
a = (27*(R^2)*(Tc^2))/(64*Pc);//Vander Waais constant
b = (R*Tc)/(8*Pc);//Vander Waais constant
v = poly(0, 'v');
q = -((a*b)/P)+(a/P)*v-(((R*T)+(b*P))/P)*v^2+(v^3);//According to Vander Waals equation
r = roots(q);
mprintf('\n (ii)Volume of the gas using Vander Waals equation is %f cubic meter',r(1));

//(iii)Using generalized Z chart
Tr = T/Tc;//Tr is the reduced temperatue
Pr = P/Pc;//Pr is the reduced pressure
//From the figure A.2.2,
Z = 0.97;//Z is the compressibility factor
V = (Z*R*T)/P;
mprintf('\n (iii)Volume of the gas using Z chart is %f cubic meter',V);

//(iv)Using molar polarisation method
//From Table 2.2
Pmc = 6.82;//Pmc is the molar polarisation for methane
//From figure A.2.4
Z0 = .965;
Z1 = 14.8*(10^-4);
Z = Z0+(Z1*Pmc);
V = (Z*R*T)/P;
mprintf('\n (iv)Volume of the gas using molar polarisation method is %f cubic meter',V);

//(v)From experiment
//Given
Z = 0.9848;
V = (0.9848*n*R*T)/P;
mprintf('\n (v)Volume of the gas calculated by experimental Z value is %f cubic meter',V);
//end