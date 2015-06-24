// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-4,Example 25,Page 133
//Title:Standard enthalpy change 
//================================================================================================================
clear 
clc

//INPUT

//The reaction is: CH4(g)+H2O(g)--->CO(g)+3H2(g)
//The standard enthalpy change for the above reaction is determined by using the individual combustion reactions
//The combustion reactions are:
//A--->CH4(g)+2O2(g)--->CO2(g)+2H2O(l)--->del_Hc_A
//B--->CO(g)+(1/2)O2(g)--->CO2(g)--->del_Hc_B
//C--->H2(g)+(1/2)O2(g)--->H2O(l)--->del_Hc_C
//D--->H2O(g)--->H2O(l)--->del_H_vap

del_Hc_A=-890.94;//enthalpy change accompanying reaction A in kJ
del_Hc_B=-283.18;//enthalpy change accompanying reaction B in kJ
del_Hc_C=-286.03;//enthalpy change accompanying reaction C in kJ
del_H_vap=-43.966;//enthalpy change of vaporization of H2O at 298.15K in kJ/mol

//CALCULATION
del_H0=(del_Hc_A)-(del_Hc_B)-(3*del_Hc_C)+(del_H_vap);//calculation of the standard enthalpy change of the reaction in kJ

//OUTPUT
mprintf('\n The standard enthalpy change at 298.15K for the reaction CH4(g)+H2O(g)--->CO(g)+3H2(g)= %0.3f kJ\n',del_H0);

//===============================================END OF PROGRAM===================================================

