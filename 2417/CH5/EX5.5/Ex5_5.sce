//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 5.5\n\n\n");
// Chapter 5 : Properties Of Liquids And Gases
// Problem 5.5  (page no. 190) 
// Solution

//From table 2 at 1.0 MPa,
p=1000; //Unit:kN/m^2 //absolute pressure
ufg=1822.0; //Unit:kJ/kg //Evap. internal energy
vf=0.0011273; //Unit:m^3/kg //Saturated liquid specific volume
vg=0.19444; //Unit:m^3/kg //Saturated vapour specific volume
vfg=vg-vf;  //Evap. specific volume //m^3/kg
hfg=ufg+(p*vfg); //Evap. Enthalpy //Unit:kJ/kg
printf("hfg for saturated steam at 1.0 MPa is %f kJ/kg",hfg); //The tabulated values are matched
