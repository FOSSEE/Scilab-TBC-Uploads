// Chapter 2 example 4
clc;
clear;

// Variable declaration
h   = 1.054*10^-34;          //plancks constant in J.s
m   = 9.1*10^-31;           // mass of electron in kg
a   = 5*10^-10;             // width of infinite potential well in m
e   = 1.6*10^-19;            // charge of electron coulombs

// Calculations
//cos(ka) = ((Psin(alpha*a))/(alpha*a)) + cos(alpha*a)
//to find the lowest allowed energy bandwidth,we have to find the difference in αa values, as ka changes from 0 to π
// for ka = 0 in above eq becomes
// 1 = 10*sin(αa))/(αa)) + cos(αa)
// This gives αa = 2.628 rad
// ka = π , αa = π
// sqrt((2*m*E2)/h^2)*a = π
E2   = ((%pi*%pi) *h^2)/(2*m*a^2*e);        //energy in eV
E1   = ((2.628^2) *h^2)/(2*m*a^2*e)  // for αa = 2.628 rad energy in eV
dE   = E2 - E1;                         //lowest energy bandwidth in eV

// Result
mprintf('Lowest energy bandwidth = %3.3f eV',dE);
