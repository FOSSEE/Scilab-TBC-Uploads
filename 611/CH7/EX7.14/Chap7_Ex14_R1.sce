// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-7,Example 14,Page 262
//Title: Enthalpy of vaporization using Riedel's correlation
//================================================================================================================
clear 
clc

//INPUT
T=373.15;//normal boiling point of water in K (temperature at which the enthalpy of vaporization is to be determined)
Pc=221.2//critical pressure of water in bar
Tc=647.3;//critical temperature of water in K
R=8.314;//universal gas constant in J/molK
del_hvn_steam_tables=2256.94;//enthalpy of vaporization at the normal boiling point taken from the steam tables, for comparison, in kJ/kg

//CALCULATION
Tbr=T/Tc;//calculation of the reduced normal boiling point (no unit)
//calculation of the enthalpy of vaporization at the normal boiling point using Eq.(7.102) in kJ/kg
del_hvn=((1.093*R*Tc*(Tbr*((log (Pc)-1.013)/(0.930-Tbr))))*10^-3)/(18*10^-3);
err=abs ((del_hvn-del_hvn_steam_tables)/del_hvn_steam_tables)*100;//calculation of percentage error

//OUTPUT
mprintf("\n The enthalpy of vaporization at the normal boiling point \n");
mprintf("\n Using Riedels correlation \t = %f kJ/kg\n",del_hvn);
mprintf("\n From the steam tables \t \t = %f kJ/kg\n",del_hvn_steam_tables);
mprintf("\n Error \t \t \t \t = %f %% \n",err);

//===============================================END OF PROGRAM===================================================

