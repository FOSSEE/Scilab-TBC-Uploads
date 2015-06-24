// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-4,Example 18,Page 123
//Title:Quality of wet steam
//================================================================================================================
clear 
clc

//INPUT
T1=270;//temperature of wet steam in degree celsius
T2=120;//final temperature of superheated steam in degree celsius
P=0.1;//pressure of superheated steam in MPa

//CALCULATION
hf=1185.2;//specific enthaply of saturated liquid in kJ/kg obtained from steam tables corresponding to T1
hg=2789.9;//specific enthalpy of saturated vapour in kJ/kg obtained from stean tables corresponding to T1
he=2716.04;//specific enthalpy of superheated steam in kJ/kg obtained from superheated steam tables corresponding to T2 obtained by interpolation
Xi=(he-hf)/(hg-hf);//calculation of quality of steam using Eq.(3.6) (no unit)

//OUTPUT
mprintf('\n The quality of wet steam= %0.3f \n',Xi);

//===============================================END OF PROGRAM===================================================


