// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-7,Example 12,Page 261
//Title: Enthalpy of vaporization 
//================================================================================================================
clear 
clc

//INPUT
T1=100;//temperature of water in degree celsius
del_hv1=2256.94;//enthalpy of vaporization at T1 in kJ/kg
T2=150;//temperature at which the enthalpy of vaporization is to be determined in degree celsius
Cp_f=4.26;//isobaric heat capacity of liquid in kJ/kgK
Cp_g=1.388;//isobaric heat capacity of vapour in kJ/kgK

//CALCULATION
del_hv2=((Cp_g-Cp_f)*(T2-T1))+del_hv1;//calculation of the enthalpy of vaporization at T2 using Eq.(7.98) (Kirchhoff equation) in kJ/kg

//OUTPUT
mprintf("\n The enthalpy of vaporization at 150 degree celsius=%0.2f kJ/kg\n",del_hv2);

//===============================================END OF PROGRAM===================================================

