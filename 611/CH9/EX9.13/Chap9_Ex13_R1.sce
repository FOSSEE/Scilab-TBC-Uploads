// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-9,Example 13,Page 336
//Title: Molar volume of mixture using the generalized virial coefficient correlation
//================================================================================================================
clear 
clc

//INPUT
T=600;//temperature of the equimolar n-butane and n-octane mixture in K
P=16;//pressure of the equimolar n-butane and n-octane mixture in bar
Bm=-309*10^-6;//second virial coefficient for the mixture taken from Example(9.7) in m^3/mol
R=8.314;//universal gas constant in J/molK

//CALCULATION
Zm=1+((Bm*P*10^5)/(R*T));//calculation of the compressibility factor for the mixture (no unit)
vm=(Zm*R*T)/(P*10^5);//calculation of the molar volume of the equimolar mixture in m^3/mol

//OUTPUT
mprintf("\n The molar volume of an equimolar mixture of n-butane and n-octane found using the generalized virial coefficient correlation = %0.4e m^3/mol\n",vm);

//===============================================END OF PROGRAM===================================================
