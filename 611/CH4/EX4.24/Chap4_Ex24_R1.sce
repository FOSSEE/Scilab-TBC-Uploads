// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-4,Example 24,Page 132
//Title:Standard enthalpy change of formation of n-butane gas
//================================================================================================================
clear 
clc

//INPUT
del_H_comb=2880.44;//gross heating value of n-buatne gas at 298.15K in kJ/mol
del_Hf_CO2=-393.978;//standard enthalpy of formation of CO2(g) at 298.15K in kJ
del_Hf_H2O=-285.958;//standard enthalpy of formation of H2O(l) at 298.15K in kJ
del_Hf_O2=0;//standard enthalpy of formation of O2(g) at 298.15K in kJ
//CALCULATION

//The combustion reaction is given by:
//C4H10(g)+(13/2)O2(g)--->4CO2(g)+5H2O(l)
//del_H_comb=(4*del_Hf_CO2)+(5*del_Hf_H2O)-(del_Hf_C4H10), from which del_Hf_C4H10 is computed
n_CO2=4;//stoichiometric coefficient (no unit)
n_H2O=5;//stoichiometric coefficient (no unit)
n_O2=-13/2;//stoichiometric coefficient (no unit)
n_C4H10=-1;//stoichiometric coefficient (no unit)
//computation of the standard enthaply of formation of n-butane gas at 298.15K in kJ
del_Hf_C4H10=(n_CO2*del_Hf_CO2)+(n_H2O*del_Hf_H2O)+(n_O2*del_Hf_O2)-(-del_H_comb);


//OUTPUT
mprintf('\n The standard enthalpy of formation of n-butane gas at 298.15K= %0.3f kJ\n',del_Hf_C4H10);

//===============================================END OF PROGRAM===================================================
