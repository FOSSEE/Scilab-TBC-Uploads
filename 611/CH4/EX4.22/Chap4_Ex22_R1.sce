// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-4,Example 22,Page 130
//Title:Standard enthalpy change for the reaction from standard enthalpies of formation
//================================================================================================================
clear 
clc

//INPUT
del_Hf_C4H10=-74.943;//standard enthalpy of formation of C4H10(g) at 298.15K in kJ
del_Hf_CO2=-393.978;//standard enthalpy of formation of CO2(g) at 298.15K in kJ
del_Hf_H2O=-241.997;//standard enthalpy of formation of H2O(g) at 298.15K in kJ

//CALCULATION

//calculation of the standard enthalpy change for the reaction C4H10(g)+(13/2)O2(g)--->4CO2(g)+5H2O(g) at 298.15K in kJ
// by using the standard enthalpy of formation data where the formation reactions are:
// 4C(s)+5H2(g)--->C4H10(g)--->A
//C(s)+O2(g)--->CO2(g)---->B
//H2(g)+(1/2)O2(g)--->H2O(g)---->C
//del_Hr=5(C)+4(B)-(A)

del_Hr=(5*del_Hf_H2O)+(4*del_Hf_CO2)-(del_Hf_C4H10);

//OUTPUT
mprintf('\n The standard enthalpy change for the reaction C4H10(g)+(13/2)O2(g)---->4CO2(g)+5H2O(g) at 298.15K= %0.3f kJ\n',del_Hr);

//===============================================END OF PROGRAM===================================================
