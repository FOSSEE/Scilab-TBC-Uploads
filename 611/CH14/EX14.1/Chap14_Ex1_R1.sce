// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-14,Example 1,Page 489
//Title: Standard Gibbs free energy change and equilibrium constant
//================================================================================================================
clear 
clc

//INPUT
//The water gas shift reaction is given by : CO2(g)+H2(g)--->CO(g)+H2O(g)
T=298.15;//temperature in K
del_Gf=[-137.327;-228.600;-394.815;0];//the standard Gibbs free energy of formation of CO(g),H2O(g),CO2(g) and H2(g) in kJ
n=[1;1;-1;-1];//stoichiometric coefficients of CO(g),H2O(g),CO2(g) and H2(g) respectively (no unit)
R=8.314;//universal gas constant in J/molK

//CALCULATION
//calculation of the standard Gibbs free energy of reaction at 298.15K using Eq.(14.1) in kJ
del_G=(n(1,:)*del_Gf(1,:))+(n(2,:)*del_Gf(2,:))+(n(3,:)*del_Gf(3,:))+(n(4,:)*del_Gf(4,:));
Ka=exp((-(del_G*10^3))/(R*T));//calculation of the equilibrium constant using Eq.(14.9) (no unit)

//OUTPUT
mprintf('The standard Gibbs free energy of the water gas shift reaction at 298.15K=%0.3f kJ \n',del_G);
mprintf('The equilibrium constant of the water gas shift reaction at 298.15K=%0.3e \n',Ka);

//===============================================END OF PROGRAM===================================================

