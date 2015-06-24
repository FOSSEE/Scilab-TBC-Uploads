// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-8,Example 4,Page 278
//Title: Entropy departure using Beattie-Bridgman equation of state
//================================================================================================================
clear 
clc

//INPUT
T=100;//temperature of carbon dioxide in degree celsius
P=10;//pressure of carbon dioxide in MPa
B0=104.76*10^-6;//Beattie-Bridgman constant for carbon dioxide in m^3/mol
b=72.35*10^-6;//Beattie-Bridgman constant for carbon dioxide in m^3/mol
C=660.0;//Beattie-Bridgman constant for carbon dioxide in (m^3 K^3)/mol
R=8.314;//universal gas constant in J/molK
v=0.233*10^-3;//volume calculated in Example (8.3) in m^3/mol
Z=0.751;//compressibility factor as calculated in Example (8.3) (no unit)

//CALCULATION
T=T+273.15;//conversion of temperature in K
//calculation of entropy departure using Eq.(8.38) in J/molK
dep_s=(R*log (Z))-(((B0*R)+((2*C*R)/(T^3)))*(1/v))+(((b*B0*R)-((2*C*B0*R)/(T^3)))*(1/(2*(v^2))))+((2*b*C*B0*R)/(3*(T^3)*(v^3)));

//OUTPUT
mprintf("\n The entropy departure for carbon dioxide using the Beattie-Bridgman equation of state = %f J/mol K\n",dep_s);


//===============================================END OF PROGRAM===================================================

//DISCLAIMER: THE PROBLEM STATEMENT MENTIONS THE TEMPERATURE TO BE 100 DEGREE CELSIUS, WHICH CORRESPONDS TO A TEMPERATURE OF     373.15K. HOWEVER, THE AUTHOR HAS EVALUATED THE ENTROPY DEPARTURE FOR A TEMPERATURE OF 313.15K, WHICH IS CLEARLY A PRINTING ERROR. THE CODE ABOVE HAS BEEN WRITTEN FOR THE TEMPERATURE OF 373.15K  AS GIVEN IN THE PROBLEM STATEMENT.
