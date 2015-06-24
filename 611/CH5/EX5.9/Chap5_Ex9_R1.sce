// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-5,Example 9,Page 173
//Title: Change in entropy of water
//================================================================================================================
clear 
clc

//INPUT
m=1;//amount of saturated liquid water in kg
T_initial=100;//initial temperature of water in degree celsius
T_body=500;//temperature of body which is brought into contact with the cylinder in degree celsius
hfg=2256.94;//enthalpy of vaporization taken from steam tables corresponding to T1 in kJ/kg

//CALCULATION
T=T_initial+273.15;//conversion of temperature in K
del_S=hfg/T;//calculation of the entropy change during the process using Eq.(5.34) in kJ/kgK

//OUTPUT
mprintf("\n The change in entropy of water=%0.4f kJ/kgK\n",del_S);


//===============================================END OF PROGRAM===================================================
