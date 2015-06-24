// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-4,Example 8,Page 104
//Title:Isobaric molar heat capacity
//================================================================================================================
clear 
clc

//INPUT
T1=298;//initial temperature in K
T2=600;//final raised temperature in K
a=45.369;//coefficient in the specific heat capacity expression where Cp=a+bT+eT^-2
b=8.688*10^-3;//coefficient in the specific heat capacity expression where Cp=a+bT+eT^-2
e=-9.619*10^5;//coefficient in the specific heat capacity expression where Cp=a+bT+eT^-2
//Where Cp is in J/molK

//CALCULATION
Cpm=((a*(T2-T1))+((b/2)*(T2^2-T1^2))-(e*((1/T2)-(1/T1))))/(T2-T1);//calculation of isobaric molar heat capacity in J/molK using Eq.(4.26)

//OUTPUT
mprintf('\n The isobaric molar heat capacity= %0.2f J/molK\n',Cpm);

//===============================================END OF PROGRAM===================================================
