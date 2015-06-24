// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-6,Example 8,Page 220
//Title: Power output of the turbine
//================================================================================================================
clear 
clc

//INPUT
P=3;//pressure of superheated steam in MPa
Ti=300;//temperature at which the steam enters the turbine in degree celsius
m=1;//mass flow rate of steam in kg/s
Te=60;//temperature of dry saturated steam when it leaves the turbine in degree celsius

//CALCULATION
//For steam at P and Ti:
h1=2995.1;//specific entahlpy of steam in kJ/kg

//For saturated steam at Te:
h2=2609.7;//specific enthalpy of saturated vapour in kJ/kg

Ws=m*(h1-h2);//calculation of the power output of the turbine using Eq.(6.83) in kW

//OUTPUT
mprintf("\n The power output of the turbine=%0.1f kW\n",Ws);

//===============================================END OF PROGRAM===================================================
