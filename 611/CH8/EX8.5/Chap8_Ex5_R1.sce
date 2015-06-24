// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-8,Example 5,Page 281
//Title: Enthalpy and entropy departure using the generalized Redlich-Kwong equation of state
//================================================================================================================
clear 
clc

//INPUT
T=427.85;//temperature of n-octane vapour in K
P=0.215;//pressure of n-octane vapour in MPa
a=4.426;//Redlich-Kwong constant taken from Example(3.9) in (m^6 Pa mol^-2)
b=164.3*10^-6;//Redlich-Kwong constant taken from Example(3.9) in m^3/mol
Z=0.9308;//compressibility factor taken from Example(3.9) (no unit)
B=9.9306*10^-3;//value of B, used in the Cardan's method in Example (3.9)
R=8.314;//universal gas constant in J/molK

//CALCULATION
dep_h=(R*T*(Z-1))-(((3*a)/(2*b))*log ((Z+B)/Z));//calculation of the enthalpy departure using Eq.(8.39) in J/mol
dep_s=(R*log(Z-B))-((a/(2*b*T))*log((Z+B)/Z));//calculation of the entropy departure using Eq.(8.40) in J/molK

//OUTPUT
mprintf("\n The enthalpy departure for n-octane vapour using the generalized Redlich-Kwong equation of state = %0.2f J/mol\n",dep_h);
mprintf("\n The entropy departure for n-octane vapour using the generalized Redlich-Kwong equation of state = %0.4f J/mol K\n",dep_s);

//===============================================END OF PROGRAM===================================================
