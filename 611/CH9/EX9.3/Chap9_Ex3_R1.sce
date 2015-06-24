// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-9,Example 3,Page 318
//Title: Fugacity and fugacity coefficient
//================================================================================================================
clear 
clc

//INPUT
T=427.85;//temperature of n-octane vapour in K
P=0.215;//pressure of n-octane vapour in MPa
a=3.789;//van der Waals constant in Pa(m^3/mol)^2
b=2.37*10^-4;//van der Waals constant in m^3/mol
v=15.675*10^-3;//molar volume of n-octane saturated vapour taken from Example 3.8 in m^3/mol
R=8.314;//universal gas constant in J/molK

//CALCULATION
Z=(P*10^6*v)/(R*T);//calculation of the compressibility factor (no unit)
//calculation of the fugacity coefficient (f/P) using the expression derived in Example 9.3 (no unit)
phi=exp (Z-1-log (((P*10^6)*(v-b))/(R*T))-a/(R*T*v));
f=(P*10^6*phi)*10^-6;//calculation of fugacity using Eq.(9.37) in MPa

//OUTPUT
mprintf("\n The fugacity coefficient of n-octane vapour = %0.2f \n",phi);
mprintf("\n The fugacity of n-octane vapour = %0.4f MPa\n",f);

//===============================================END OF PROGRAM===================================================

