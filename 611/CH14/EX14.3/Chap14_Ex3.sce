// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-14,Example 3,Page 491
//Title: Equilibrium constant
//================================================================================================================
clear 
clc

//INPUT
//The water gas shift reaction is given by: CO2(g)+H2(g)--->CO(g)+H2O(g)
T1=298.15;//initial temperature in K
Ka1=8.685*10^-6;//equilibrium constant for the water-gas shift reaction at T1 (no unit)
T2=1000;//temperature at which the equilibrium constant has to be determined in K
R=8.314;//universal gas constant in J/molK
del_Hf=[-110.532;-241.997;-393.978;0];//the standard enthalpy of formation of CO(g),H2O(g),CO2(g) and H2(g) in kJ
n=[1;1;-1;-1];//stoichiometric coefficients of CO(g),H2O(g),CO2(g) and H2(g) respectively (no unit)

//CALCULATION
//It is assumed that del_H is constant in the temperature range T1 and T2
del_H=(n(1,:)*del_Hf(1,:))+(n(2,:)*del_Hf(2,:))+(n(3,:)*del_Hf(3,:))+(n(4,:)*del_Hf(4,:));//calculation of the standard enthalpy of the reaction in kJ
Ka2=Ka1*exp(((del_H*10^3)/R)*((1/T1)-(1/T2)));//calculation of the equilibrium constant at T2 (no unit)

//OUTPUT
mprintf('The equilibrium constant for the water gas shift reaction at 1000K=%f \n',Ka2);


//===============================================END OF PROGRAM===================================================




