// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-1,Example 2,Page 7
//Title:Force due to atmospheric air
//================================================================================================================
clear 
clc

//INPUT
l=15;//length of the child's head in cm
b=12;//breadth of the child's head in cm
p=101325;//atmospheric pressure in Pa

//CALCULATION
area=(l*b)/(10^4);//calculation of area of the child's head in m^2
force=p*area;//calculation of force exerted on the child's head due to atmospheric air in N

//OUTPUT
mprintf('\n The force exerted on the childs head due to atmospheric air= %f N',force);

//===============================================END OF PROGRAM===================================================
