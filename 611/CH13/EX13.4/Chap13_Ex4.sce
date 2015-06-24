// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-13,Example 4,Page 483
//Title:Ideal solubility
//================================================================================================================
clear 
clc

//INPUT
temp=20; // prevailing tempearture in degree celsius
melt_temp=80.05; // melting point of naphthalene in degree celsius
hf=18.574; // enthalpy of fusion in kJ/mol
R=8.314; // universal gas constant in J/molK

//CALCULATION
t=temp+273.15; // convesion of prevailing temperature to K
melt_t=melt_temp+273.15; //conversion of melting point of naphtalene to K
x2=exp(((hf*10^3)/R)*((1/melt_t)-(1/t))); //calculation of ideal solubility using Eq.(13.40)(no unit)

//OUTPUT
mprintf('\n The ideal solubility of naphthalene at 20 degree celsius= %0.4f',x2);

//===============================================END OF PROGRAM===================================================
