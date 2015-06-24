// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-3,Example 5,Page 52
//Title:Volume using ideal gas law
//================================================================================================================
clear 
clc

//INPUT
n=1;//number of moles of n-octane vapour in mol
T=427.85;//tempearture of n-octane vapour in K
P=0.215;//pressure n-octane vapour in MPa
R=8.314;//universal gas constant in (kPa m^3)/(kmol K)

//CALCULATION
V=((n*10^-3)*R*T)/(P*10^3);//calculation of volume using ideal gas law-Eq.(3.9) in m^3

//OUTPUT
mprintf('\n The volume occupied by n-octane vapour= %f m^3 \n',V);

//===============================================END OF PROGRAM===================================================
