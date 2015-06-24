// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-3,Example 3,Page 49
//Title:Volume ratio 
//================================================================================================================
clear 
clc

//INPUT
T=100;//temperature inside the vessel in degree celsius
V=0.00317;//specific volume of water at the critical point in m^3/kg
vf=0.0010437;//molar volume of saturated liquid in m^3/kg
vg=1.673;//molar volume of saturated vapour in m^3/kg

//CALCULATION
X=(V-vf)/(vg-vf);//calculation of the quality of wet steam using Eq.(3.3) (no unit)
ratio=(X*vg)/((1-X)*vf);//calculation of volume ratio of saturated vapour to the saturated liquid (no unit)

//OUTPUT
mprintf('\n The volume ratio of saturated vapour to the saturated liquid= %0.2f \n',ratio);

//===============================================END OF PROGRAM===================================================
