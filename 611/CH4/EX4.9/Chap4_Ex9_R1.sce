// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-4,Example 9,Page 105
//Title:Amount of energy transferred using isobaric molar heat capacity
//================================================================================================================
clear 
clc

//INPUT
N=1;//number of moles of carbon dioxide in kmol
T1=298;//initial temperature in K
T2=600;//final raised temperature in K
a=45.369;//coefficient in the specific heat capacity expression where Cp=a+bT+eT^-2
b=8.688*10^-3;//coefficient in the specific heat capacity expression where Cp=a+bT+eT^-2
e=-9.619*10^5;//coefficient in the specific heat capacity expression where Cp=a+bT+eT^-2
//Where Cp is in J/molK

//CALCULATION
Cpm=((a*(T2-T1))+((b/2)*(T2^2-T1^2))-(e*((1/T2)-(1/T1))))/(T2-T1);//calculation of isobaric molar heat capacity in J/molK using Eq.(4.26)
Q=N*10^3*Cpm*(T2-T1)*10^-6;//calculation of the amount of energy to be transferred in MJ using Eq.(4.25)

//OUTPUT
mprintf('\n The amount of energy to be transferred as heat= %0.3f MJ \n',Q);

//===============================================END OF PROGRAM===================================================
