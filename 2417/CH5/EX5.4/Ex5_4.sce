//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 5.4\n\n\n");
// Chapter 5 : Properties Of Liquids And Gases
// Problem 5.4  (page no. 189) 
// Solution

//By defination,
//hg=ug+(p*vg)/J
//hf=uf+(p*vf)/J
//hfg = hg-hf = (ug-uf) + p*(vg-vf)/J = ufg + p*(vg-vf)/J
//From table 2 at 115 psia,
p=115; //Unit:psia //absolute pressure
ufg=798.8; //Unit:Btu/lbm //Evap. internal energy
ug=3.884; //Unit:ft^3/lbm //Saturated vapour internal energy
vf=0.017850; //Unit:ft^3/lbm //Saturated liquid specific volume
J=778; //J=Conversion factor //Unit:ft*lbf/Btu
//1 ft^2=144 in^2
hfg=ufg+(p*144*(ug-vf))/J; //Evap. Enthalpy //Unit:Btu/lbm
printf("hfg for saturated steam at 115 psia is %f Btu/lbm",hfg); //The tabulated values are matched
