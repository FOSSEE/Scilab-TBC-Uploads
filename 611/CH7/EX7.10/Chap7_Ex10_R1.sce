// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-7,Example 10,Page 259
//Title: Pressure at which boiler is to be operated
//================================================================================================================
clear 
clc

//INPUT
T2=150;//temperature at which water it is desired to boil water in degree celsius
P1=0.10133;//ambient pressure in MPa
T1=100;//temperature at which water boils corresponding at pressure P1 in degree celsius
del_hv=2256.94;//enthalpy of vaporization in kJ/kg
R=8.314;//universal gas constant in J/molK
M=18*10^-3;//molar mass of water in kg/mol

//CALCULATION
T1=T1+273.15;//conversion of temperature in K
T2=T2+273.15;//conversion of temperature in K
P2=P1*(exp (((del_hv*10^3*M)*((1/T1)-(1/T2)))/(R)));//calculation of the approximate pressure at which the boiler is to be operated using Eq.(7.92) in MPa

//OUTPUT
mprintf("\n The approximate pressure at which the boiler is to be operated=%0.3f MPa\n",P2);

//===============================================END OF PROGRAM===================================================
