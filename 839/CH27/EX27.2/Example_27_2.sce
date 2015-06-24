//clear//
clear;
clc;

//Example 27.2
//Given
//A = MgSO4, B = MgSO4.7H2O and C = H2O
T = 120; //[F]
wA = 0.325; 

//Solution
//From Fig 27.4
//Enthalpy coordinate of the point wA
H1 = -33; //[Btu/lb]
//Enthalpy coordinate of the final magma at concentration wA
H2 = -78.4; //[Btu/lb]
//Per hundred pouds of original solution the change in enthalpy
F = 100; //[lb]
delta_H = F*(H1-H2); //[Btu]
//Applying "center-of gravity principle" to 70 F isotherm in Fig. 27.3
C_ML = 0.259;
C_CRY = 0.488;
//Crystals are
Cry = F*(wA-C_ML)/(C_CRY-C_ML); //[lb/100lb slurry]
//The heat evolved per ton of crystals is 
H = delta_H/Cry*2000; //[Btu/ton]
disp('Btu/ton',H,'The heat evolved per ton of crystals is')
