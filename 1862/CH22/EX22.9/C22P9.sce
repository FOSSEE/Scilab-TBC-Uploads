clear
clc
//to find pressure according to ideal gas law
//to find pressure according to van der Waals equations

//Given:
//for qxygen van der Waals coefficients
a = 0.138//in J.m^3/mol^2
b = 3.18e-5//in m^3/mol
//number mol of oxygen
n = 1//in mol
//volume of box
V = 0.0224//in m^3
//molar gas constant
R = 8.31//in J/mol.K
//molar mass
M = 0.032//in Kg/mol
//temperature
T = 50//in K

//Solution:
//applying ideal gas equation
//pressure according to ideal gas law
p = (n*R*T)/V//IN Pa
//applying van der Waals equations
//pressure according to van der Waals equations
P = ((n*R*T)/(V-(n*b)) )-((a*n^2)/V^2)//in Pa

printf ("\n\n Pressure according to ideal gas law p = \n\n %.2e Pa" ,p);
printf ("\n\n Pressure according to van der Waals equations P = \n\n %.2e Pa" ,P);
