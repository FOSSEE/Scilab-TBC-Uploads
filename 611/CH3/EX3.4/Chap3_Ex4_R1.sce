// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-3,Example 4,Page 49
//Title:Mass ratio
//================================================================================================================
clear 
clc

//INPUT
U=2000;//specific internal energy of liquid-vapour mixture in kJ/kg
uf=850.6;//specific internal energy of saturated liquid in kJ/kg
ug=2593.2;//specific internal energy of saturated vapour in kJ/kg

//CALCULATION
mass_ratio=(U-uf)/(ug-U);//calculation of the mass ratio of vapour to liquid using the lever rule (no unit)

//OUTPUT
mprintf('\n The mass ratio of vapour to liquid= %0.4f \n',mass_ratio);

//===============================================END OF PROGRAM===================================================
