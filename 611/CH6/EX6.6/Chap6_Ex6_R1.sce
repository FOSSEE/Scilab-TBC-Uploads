// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-6,Example 6,Page 218
//Title: Work done by steam
//================================================================================================================
clear 
clc

//INPUT
m=0.1;//mass of superheated steam in the piston cylinder assembly in kg
P1=1;//initial pressure of superheated steam in MPa
T1=300;//initial temperature of superheated steam in degree celsius
P2=0.1;//pressure of steam after expansion in MPa
T2=200;//temperature of steam after expansion in degree celsius

//CALCULATION
//For steam at P1 and T1:
h1=3052.1;//specific enthalpy of steam in kJ/kg
v1=0.2580;//specific volume of steam in m^3/kg

//For steam at P2 and T2:
h2=2875.4;//specific enthalpy of steam in kJ/kg
v2=2.1720;//specific volume of steam in m^3/kg

del_u=(((h1*10^3)-(P1*10^6*v1))-((h2*10^3)-(P2*10^6*v2)))*10^-3;//calculation of the change in internal energy of the steam in kJ/kg
W=m*(del_u);//calculation of the work done by  using Eq.(6.77)steam in kJ

//OUTPUT
mprintf("\n The work done by steam=%0.2f kJ\n",W);

//===============================================END OF PROGRAM===================================================
