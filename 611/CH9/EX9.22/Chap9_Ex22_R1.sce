// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-9,Example 22,Page 349
//Title: Fugacity of liquid n-octane
//================================================================================================================
clear 
clc

//INPUT
T=427.85;//temperature of n-octane vapour in K
Psat=0.215;//saturation pressure of n-octane vapour at T in MPa
P=1;//pressure at which the fugacity of liquid n-octane is to be determined in MPa
f_sat=0.2368;//fugacity of n-octane vapour at T and Psat taken from Example(9.5) in MPa
vl=0.2003*10^-3;//molar volume of n-octane liquid at T and Psat taken from Example(3.16) in m^3/mol
R=8.314;//universal gas constant in J/molK

//CALCULATION
f_l=(0.2368*exp((vl*(P-Psat)*10^6)/(R*T)));//calculation of fugacity of n-octane liquid using Eq.(9.150) in MPa

//OUTPUT
mprintf("\n The fugacity of liquid n-octane at 427.85K and 1MPa = %0.4f MPa\n",f_l);

//===============================================END OF PROGRAM===================================================
