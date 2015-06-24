// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-8,Example 10,Page 299
//Title: Enthalpy and entropy departure using the generalized virial coefficient correlation
//================================================================================================================
clear 
clc

//INPUT
T=339.7;//temperature of ethylene in K
P=1;//pressure of ethylene in bar
Tc=283.1;//critical temperature of ethylene in K
Pc=51.17;//critical pressure of ethylene in bar
w=0.089;//acentric factor (no unit)
R=8.314;//universal gas constant in J/molK

//CALCULATION
Pr=P/Pc;//calculation of reduced pressure (no unit)
Tr=T/Tc;//calculation of reduced temperature (no unit)
dep_h=R*Tc*Pr*((0.083-(1.097/(Tr^1.6)))+(w*(0.139-(0.894/(Tr^4.2)))));//calculation of the enthalpy departure using Eq.(8.75) in J/mol
dep_s=-Pr*R*((0.675/(Tr^2.6))+(w*(0.722/(Tr^5.2))));//calculation of the entropy departure using Eq.(8.76) in J/molK

//OUTPUT
mprintf("\n The enthalpy departure for ethylene using the generalized virial coefficient correlation = %f J/mol\n",dep_h);
mprintf("\n The entropy departure for ethylene using the generalized virial coefficient correlation = %e J/mol K\n",dep_s);

//===============================================END OF PROGRAM=================================================== 
