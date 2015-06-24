// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-8,Example 7,Page 282
//Title: Enthalpy and entropy departure using the Peng-Robinson equation of state
//================================================================================================================
clear 
clc

//INPUT
T=427.85;//temperature of n-octane vapour in K
P=0.215;//pressure of n-octane vapour in MPa
S=0.9457;//constant used in the Peng-Robinson equation of state,from Example(3.16)
alpha=1.2677;//constant used in the Peng-Robinson equation of state,from Example(3.16)
a=5.2024;//constant used in the Peng-Robinson equation of state,from Example(3.16) in (m^6 Pa mol^-2)
b=1.4750*10^-4;//constant used in the Peng-Robinson equation of state,from Example(3.16) in m^3/mol
B=8.9151*10^-3;//factor used in the Cardan's method for solving the Peng-Robinson equation of state,from Example(3.16) (no unit)
Z=0.9151;//compressibility factor taken from Example (3.16) (no unit)
R=8.314;//universal gas constant in J/molK
Tc=569.4;//critical temperature of n-octane in K

//CALCULATION
da_dT=(-a*S)/(sqrt (alpha*T*Tc));//calculation of da/dT using Eq.(8.47)
//calculation of the enthalpy departure using Eq.(8.45) in J/mol
dep_h=(R*T*(Z-1))+(((((T*da_dT)-a)/(2*sqrt(2)*b)))*(log ((Z+(B*(1+sqrt (2))))/(Z+(B*(1-sqrt (2)))))));
dep_s=(R*log (Z-B))+((1/(2*sqrt (2)*b))*(da_dT)*(log ((Z+(B*(1+sqrt (2))))/(Z+(B*(1-sqrt (2)))))));//calculation of the entropy departure using Eq.(8.46)in J/molK

//OUTPUT
mprintf("\n The enthalpy departure for n-octane vapour using the Peng-Robinson equation of state = %0.1f J/mol\n",dep_h);
mprintf("\n The entropy departure for n-octane vapour using the Peng-Robinson equation of state = %0.3f J/mol K\n",dep_s);

//===============================================END OF PROGRAM===================================================
