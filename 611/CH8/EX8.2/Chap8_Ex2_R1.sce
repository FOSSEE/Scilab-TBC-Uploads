// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-8,Example 2,Page 275
//Title: Enthalpy and entropy departure
//================================================================================================================
clear 
clc

//INPUT
T=427.85;//temperature of n-octane vapour in K
P=0.215;//pressure of n-octane vapour in MPa
a=3.789;//van der Waals constant in Pa (m^3/mol)^2
b=2.37*10^-4;//van der Waals constant in m^3/mol
v=15.675*10^-3;//volume occupied by n-octane vapour taken from Example (3.8) in m^3/mol
R=8.314;//universal gas constant in J/molK

//CALCULATION
//n-octane obeys the van der Waals equation of state
dep_h=(P*10^6*v)-(R*T)-(a/v);//calculation of the enthalpy departure using Example(8.1) in J/mol
dep_s=R*log ((P*10^6*(v-b))/(R*T));//calculation of the entropy departure using Example(8.1) in J/molK

//OUTPUT
mprintf("\n The enthalpy departure for n-octane vapour = %0.2f J/mol\n",dep_h);
mprintf("\n The entropy departure for n-octane vapour = %0.4f J/mol K\n",dep_s);

//===============================================END OF PROGRAM===================================================
