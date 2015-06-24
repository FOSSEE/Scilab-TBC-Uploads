// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-4,Example 20,Page 128
//Title:Standard enthalpy change
//================================================================================================================
clear 
clc

//INPUT
del_H=-90.135;//standard enthalpy change for the reaction CO(g)+2H2(g)--->CH3OH(g) at 298.15K in kJ

//CALCULATION
del_H1=2*del_H;//calculation of standard enthalpy change for the reaction 2CO(g)+4H2(g)--->2CH3OH(g) at 298.15K in kJ
del_H2=(1/2)*del_H;//calculation of standard enthalpy change for the reaction (1/2)CO(g)+H2(g)--->(1/2)CH3OH(g) at 298.15K in kJ

//OUTPUT
mprintf('\n The standard enthalpy change for the reaction 2CO(g)+4H2(g)---->2CH3OH(g) at 298.15K= %0.2f kJ\n',del_H1);
mprintf('\n The standard enthalpy change for the reaction (1/2)CO(g)+H2(g)---->(1/2)CH3OH(g) at 298.15K= %0.4f kJ\n',del_H2 );

//===============================================END OF PROGRAM===================================================
