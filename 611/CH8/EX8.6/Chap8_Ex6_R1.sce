// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-8,Example 6,Page 281
//Title: Enthalpy and entropy departure using the SRK equation of state
//================================================================================================================
clear 
clc

//INPUT
T=427.85;//temperature of n-octane vapour in K
P=0.215;//pressure of n-octane vapour in MPa
S=1.0786;//constant used in the SRK equation of state,from Example(3.15)
alpha=1.3079;//constant used in the SRK equation of state,from Example(3.15)
a=5.0180;//constant used in the SRK equation of state,from Example(3.15) in (m^6 Pa mol^-2)
b=1.6426*10^-4;//constant used in the SRK equation of state,from Example(3.15) in m^3/mol
B=9.9282*10^-3;//factor used in the Cardan's method for solving the SRK equation of state,from Example(3.15) (no unit)
Z=0.9191;//compressibility factor taken from Example (3.15) (no unit)
R=8.314;//universal gas constant in J/molK
Tc=569.4;//critical temperature of n-octane in K

//CALCULATION
da_dT=(-a*S)/(sqrt (alpha*T*Tc));//calculation of da/dT using Eq.(8.44)
dep_h=(R*T*(Z-1))+((((T*da_dT)-a)/b)*log ((Z+B)/Z));//calculation of the enthalpy departure using Eq.(8.42) in J/mol
dep_s=(R*log (Z-B))+((1/b)*(da_dT)*log ((Z+B)/Z));//calculation of the entropy departure using Eq.(8.43) in J/molK

//OUTPUT
mprintf("\n The enthalpy departure for n-octane vapour using the SRK equation of state = %f J/mol\n",dep_h);
mprintf("\n The entropy departure for n-octane vapour using the SRK equation of state = %0.4f J/mol K\n",dep_s);

//===============================================END OF PROGRAM===================================================

// DISCLAIMER: NUMERICAL ERROR OBSERVED IN ENTHALPY DEPARTURE FUNCTION CALCULATION. FOR THE GIVEN INPUT DATA, THE ANSWER GIVEN IN THE BOOK "-890.22 J/mol" WAS FOUND TO BE NUMERICALLY INCORRECT.
