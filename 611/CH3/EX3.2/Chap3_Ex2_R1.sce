// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-3,Example 2,Page 49
//Title:Quality of wet steam
//================================================================================================================
clear 
clc

//INPUT
V=1.42;//specific volume of wet steam in m^3/kg
T=100;//temperature of wet steam in degree celsius
vf=0.0010437;//molar volume of saturated liquid in m^3/kg
vg=1.673;//molar volume of saturated vapour in m^3/kg

//CALCULATION
X=(V-vf)/(vg-vf);//calculation of the quality of wet steam using Eq.(3.3) (no unit)

//OUTPUT
mprintf('\n The quality of wet steam= %0.4f \n',X);

//===============================================END OF PROGRAM===================================================
