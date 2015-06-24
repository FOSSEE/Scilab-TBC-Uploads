// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-3,Example 1,Page 48
//Title:Specific volume and Specific internal energy
//================================================================================================================
clear 
clc

//INPUT
X=0.8;//Quality of wet steam (no unit)
T=150;//Temperature of the wet steam in degree celsius
vf=0.0010908;//molar volume of saturated liquid in m^3/kg
vg=0.3924;//molar volume of saturated vapour in m^3/kg
uf=631.63;//molar internal energy of the saturated liquid in kJ/kg
ug=2558.6;//molar internal energy of the saturated vapour in kJ/kg

//CALCULATION
V=(X*vg)+((1-X)*vf);//calculation of specific volume in m^3/kg using Eq.(3.3)
U=(X*ug)+((1-X)*uf);//calculation of specific internal energy in kJ/kg using Eq.(3.6)

//OUTPUT
mprintf('\n The specific volume of wet steam= %0.4f m^3/kg \n',V);
mprintf('\n The specific internal energy of wet steam= %0.1f kJ/kg \n',U);

//===============================================END OF PROGRAM===================================================

