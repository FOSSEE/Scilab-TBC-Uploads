// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-5,Example 7,Page 172
//Title: Change in the entropy of the reactor contents
//================================================================================================================
clear 
clc

//INPUT
T_system=200;//temperature of the contents of reactor in degree celsius
t=15;//operation time of agitator in minutes
P=750;//power of the operating motor in W

//CALCULATION
dQ=P*t*60*10^-3;//calculation of energy added as heat in kJ
T=T_system+273.15;//conversion of temperature in K
del_S=dQ/T;//calculation of entropy change using Eq.(5.32) in kJ/K

//OUTPUT
mprintf("\n The change in the entropy of the reactor contents=%0.4f kJ/K \n",del_S);


//===============================================END OF PROGRAM===================================================
