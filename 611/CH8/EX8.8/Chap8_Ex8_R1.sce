// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-8,Example 8,Page 284
//Title: Enthalpy and entropy departure using the Edmister charts
//================================================================================================================
clear 
clc

//INPUT
T=339.7;//temperature of ethylene in K
P=30.7;//pressure of ethylene in bar
Tc=283.1;//critical temperature of ethylene in K
Pc=51.17;//critical pressure of ethylene in bar
w=0.089;//acentric factor (no unit)
R=8.314;//universal gas constant in J/molK

//CALCULATION
Pr=P/Pc;//calculation of reduced pressure (no unit)
Tr=T/Tc;//calculation of reduced temperature (no unit)
del_h0=0.45;//value of ((h0-h)/RTc)_0 read from Fig.(8.2) corresponding to Pr and Tr (no unit)
del_h1=0.18;//value of ((h0-h)/RTc)_1 read from Fig.(8.3) corresponding to Pr and Tr (no unit)
del_s0=0.26;//value of ((s0-s)/R)_0 read from Fig.(8.4) corresponding to Pr and Tr (no unit)
del_s1=0.20;//value of ((s0-s)/R)_1 read from Fig.(8.5) corresponding to Pr and Tr (no unit)
dep_h=((del_h0)+(w*del_h1))*R*Tc;//calculation of the enthalpy departure using Eq.(8.52) in J/mol
dep_s=((del_s0)+(w*del_s1))*R;//calculation of the entropy departure using Eq.(8.56) in J/molK

//OUTPUT
mprintf("\n The enthalpy departure for ethylene using the Edmister charts = %0.3f J/mol\n",dep_h);
mprintf("\n The entropy departure for ethylene using the Edmister charts = %0.4f J/mol K\n",dep_s);

//===============================================END OF PROGRAM===================================================


