// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-4,Example 23,Page 131
//Title:Standard enthalpy change for the reaction from standard enthalpies of formation (2)
//================================================================================================================
clear 
clc

//INPUT
del_Hf_C4H10=-74.943;//standard enthalpy of formation of C4H10(g) at 298.15K in kJ
del_Hf_CO2=-393.978;//standard enthalpy of formation of CO2(g) at 298.15K in kJ
del_Hf_H2O=-241.997;//standard enthalpy of formation of H2O(g) at 298.15K in kJ
del_H_vap=43.966;//enthalpy of vaporization of H2O at 298.15K in kJ/mol

//CALCULATION

//calculation of the standard enthalpy change for the reaction C4H10(g)+(13/2)O2(g)--->4CO2(g)+5H2O(l)--->A at 298.15K in kJ
//The above reaction A can be expressed as a sum of the following two reactions:
//C4H10(g)+(13/2)O2(g)--->4CO2(g)+5H2O(g) --->B
//5H2O(g)--->5H2O(l)--->C
//Reaction C represents the physical change H2O((g);25 degree celsius,1 bar)--->H2O((l);25 degree celsius,1 bar), which can be expressed as:
//a-->H2O((g);25 degree celsius,1 bar)--->H2O((g);25 degree celsius,Ps)---->del_H1
//b-->H2O((g);25 degree celsius,Ps)--->H2O((l);25 degree celsius,Ps)--->del_H2
//c-->H2O((l);25 degree celsius,Ps)--->H2O((l);25 degree celsius,1 bar)--->del_H3, where Ps is the saturation pressure at 25 degree celsius
//The overall enthalpy change therefore is given as del_H0=del_H1+del_H2+del_H3

del_H1=0;//vapour phase at low pressures behaves like an ideal gas therefore the enthalpy change is zero
del_H2=5*(-del_H_vap);//calculation of the enthalpy of reaction b in kJ
del_H3=0;//effect of pressure on the enthalpy of liquids is negligible

//calculation of the standard enthalpy change for the reaction C4H10(g)+(13/2)O2(g)--->4CO2(g)+5H2O(g) at 298.15K in kJ, from Example (4.22)
//by using the standard enthalpy of formation data where the formation reactions are:
//4C(s)+5H2(g)--->C4H10(g)
//C(s)+O2(g)--->CO2(g)
//H2(g)+(1/2)O2(g)--->H2O(g)
del_H=(5*del_Hf_H2O)+(4*del_Hf_CO2)-(del_Hf_C4H10);
del_net_H=(del_H)+(del_H1)+(del_H2)+(del_H3);//calculation of the standard enthalpy change for the reaction C4H10(g)+(13/2)O2(g)-->4CO2(g)+5H2O(l) at298.15K in kJ

//OUTPUT
mprintf('\n The standard enthalpy change for the reaction C4H10(g)+(13/2)O2(g)---->4CO2(g)+5H2O(l) at 298.15K= %0.3f kJ\n',del_net_H);

//===============================================END OF PROGRAM===================================================
