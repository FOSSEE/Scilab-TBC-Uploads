//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 5.1\n\n\n");
// Chapter 5 : Properties Of Liquids And Gases
// Problem 5.1  (page no. 182) 
// Solution

p=0.6988; //Unit:psia //absolute pressure
vg=467.7; //Unit:ft^3/lbm //Saturated vapour specific volume
ug=1040.2; //Unit:Btu/lbm //Saturated vapour internal energy
J=778; //J=Conversion factor
// 1 Btu = 778 ft*LBf
//h=u+(p*v)/J 
hg=ug+((p*vg*144)/J); //The enthalpy of saturated steam //1 ft^2=144 in^2 //Btu/lbm
printf("The enthalpy of saturated steam at 90 F is %f Btu/lbm",hg); //The value is matched with the value in table 1
