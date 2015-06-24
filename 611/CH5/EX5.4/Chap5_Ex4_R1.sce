// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-5,Example 4,Page 166
//Title: Minimum work and maximum possible COP
//================================================================================================================
clear 
clc

//INPUT
T_L=4.25;//normal boiling point of helium in K
Q_L=0.083;//latent heat of vaporization of helium in kJ/mol
n=1;//amount of liquid helium to be produced in kmol
T_amb=42;//ambient temperature in summer in degree celsius

//CALCULATION
T_H=T_amb+273.15;//conversion of temperature in K
COP=(T_L)/(T_H-T_L);//calculation of COP of the refrigerator using Eq.(5.20)(no unit)
W=(Q_L)/COP;//calculation of work to be done on the refrigerator unit using Eq.(5.20) in kJ

//OUTPUT
mprintf("\n The maximum possible COP of the unit=%0.4f \n",COP);
mprintf("\n The minimum amount of work to be done on the refrigerating unit=%f kJ \n",W);

//===============================================END OF PROGRAM===================================================
