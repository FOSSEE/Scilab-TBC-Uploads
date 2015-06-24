// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-7,Example 13,Page 261
//Title: Enthalpy of vaporization using Watson's correlation
//================================================================================================================
clear 
clc

//INPUT
T1=100;//temperature of water in degree celsius
del_hv1=2256.94;//enthalpy of vaporization at T1 in kJ/kg
T2=150;//temperature at which the enthalpy of vaporization is to be determined in degree celsius
del_hv_kirchoff=2113.34;//enthalpy of vaporization predicted by the Kirchhoff relation taken from Example 7.12 for comparison, in kJ/kg
del_hv_steam_tables=2113.25;//enthalpy of vaporization taken from the steam tables corresponding to T2,for comparison, in kJ/kg
Tc=647.3;//critical temperature of water in K

//CALCULATION
T1=T1+273.15;//conversion of temperature in K
T2=T2+273.15;//conversion of temperature in K
Tr1=T1/Tc;//calculation of reduced temperature corresponding to state 1 (no unit)
Tr2=T2/Tc;//calculation of reduced temperature corresponding to state 2 (no unit)
del_hv2=del_hv1*(((1-Tr2)/(1-Tr1))^0.38);//calculation of enthalpy of vaporization at T2 using Eq.(7.101) in kJ/kg

//OUTPUT
mprintf("\n The enthalpy of vaporization at 150 degree celsius using \n");
mprintf("\n Watson correlation \t = %f kJ/kg\n",del_hv2);
mprintf("\n Kirchhoffs relation \t = %f kJ/kg\n",del_hv_kirchoff);
mprintf("\n From steam tables \t = %f kJ/kg\n",del_hv_steam_tables);

//===============================================END OF PROGRAM===================================================

