//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 5.2\n\n\n");
// Chapter 5 : Properties Of Liquids And Gases
// Problem 5.2  (page no. 187) 
// Solution

p=4.246; //Unit:kPa //absolute pressure
vg=32.894; //Unit:m^3/kg //specific volume
ug=2416.6; //Unit:kJ/kg //internal energy
J=778; //J=Conversion factor
// 1 Btu = 778 ft*LBf
//h=u+(p*v)
hg=ug+(p*vg); //The enthalpy of saturated steam //1 ft^2=144 in^2 //unit:kJ/kg
printf("The enthalpy of saturated steam at 30 C is %f kJ/kg",hg); //The value is matched with the value in table 1
