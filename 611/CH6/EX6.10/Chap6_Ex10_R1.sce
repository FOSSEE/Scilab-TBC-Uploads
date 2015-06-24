// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-6,Example 10,Page 223
//Title: Maximum work obtained from steam
//================================================================================================================
clear 
clc

//INPUT
m=0.1;//mass of superheated steam in the piston cylinder assembly in kg
P1=3;//initial pressure of superheated steam in MPa
T1=300;//initial temperature of superheated steam in degree celsius
T0=300;//temperature of the reservoir which is placed in thermal contact with the piston-cylinder assembly in degree celsius
P2=0.1;//pressure of steam after expansion in MPa

// ADDITIONAL DATA PROVIDED
//For steam at P1 and T1:
h1=2995.1;//specific enthalpy of steam in kJ/kg
v1=0.08116;//specific volume of steam in m^3/kg
s1=6.5422;//entropy of steam in kJ/kgK

//For steam at P2 and T2:
h2=3074.5;//specific enthalpy of steam in kJ/kg
v2=2.6390;//specific volume of steam in m^3/kg
s2=8.2166;//entropy of steam in kJ/kgK

//CALCULATION
T0=T0+273.15;//conversion of temperature in K

//The maximum work can be carried out if the process is carried out reversibly, which is given by:
W=m*(h1-h2-(((P1*v1)-(P2*v2))*10^3)-(T0*(s1-s2)));//calculation of maximum work obtained from the steam using Eq.(6.90) in kJ

//OUTPUT
mprintf("\n The maximum work obtained from steam=%0.2f kJ\n",W);

//===============================================END OF PROGRAM===================================================
