//Chemical Engineering Thermodynamics
//Chapter 13
//Thermodynamics in Phase Equilibria

//Example 13.6
clear;
clc;

//Given
x1 = 0.1;//Mole fraction of dichloromethane (CCl2H2)
x2 = 0.9;//Mole fraction of methyl acetate (C3H6O2)
M1 = 85;//Molecular weight of CCl2H2
M2 = 74;//Molecular weight of C3H602
D1 = 1.3163;//Density of CCl2H2 in gm/cc
D2 = 0.9279;//Density of C3H6O2 in gm/cc

//To Calculate the volume of 10% dichloromethane solution
V1 = M1/D1;//Specific volume of pure CCL2H2 in cc/gmole
V2 = M2/D2;//Specific volume of C3H6O2 in cc/gmole
//From equation 13.62(page no 256)& 13.78 (page no 257)
V_e = x1*x2*(1.2672-0.771*x1);//excess volume in cc/gmole
V = V1*x1+V2*x2+V_e;
mprintf('The volume of 10 percent dichloromethane is %f cc/gmole',V);
//end