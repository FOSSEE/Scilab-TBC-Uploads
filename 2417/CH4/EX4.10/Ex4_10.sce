//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 4.10\n\n\n");
// Chapter 4 : The Second Law Of Thermodynamics
// Problem 4.10  (page no. 159) 
// Solution

hfg=1959.7; //Unit:kJ/kg //Evaporative enthalpy
T=195.07+273; //Converted into Kelvin //Temperature
deltaS=hfg/T; //Change in entropy //kJ/kg*K
printf("Change in entropy at 1.4MPa for the vaporization of 1 kg is %f kJ/kg*K",deltaS); //Values compares very closely to the Steam Tables value
