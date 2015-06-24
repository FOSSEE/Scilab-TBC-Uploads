// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-8,Example 9,Page 297
//Title: Enthalpy and entropy departure using the Lee-Kesler data
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
del_h0=0.474;//value of ((h0-h)/RTc)_0 read from Fig.(8.6) corresponding to Pr and Tr (no unit)
del_h1=0.232;//value of ((h0-h)/RTc)_1 read from Fig.(8.8) corresponding to Pr and Tr (no unit)
del_s0=0.277;//value of ((s0-s)/R)_0 read from Fig.(8.10) corresponding to Pr and Tr (no unit)
del_s1=0.220;//value of ((s0-s)/R)_1 read from Fig.(8.12) corresponding to Pr and Tr (no unit)
dep_h=((del_h0)+(w*del_h1))*R*Tc;//calculation of the enthalpy departure using Eq.(8.62) in J/mol
dep_s=((del_s0)+(w*del_s1))*R;//calculation of the entropy departure using Eq.(8.65) in J/molK

//OUTPUT
mprintf("\n The enthalpy departure for ethylene using the Lee-Kesler data = %f J/mol\n",dep_h);
mprintf("\n The entropy departure for ethylene using the Lee-Kesler data = %f J/mol K\n",dep_s);

//===============================================END OF PROGRAM===================================================


