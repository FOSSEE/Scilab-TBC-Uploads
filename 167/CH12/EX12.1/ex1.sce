//example 1
//Approximating Differential Quantities by Differences
clear
clc
h305=305.22 //Specific Enthalpy at 305 K in kJ/kg
h295=295.17 //Specific Enthalpy at 205 K in kJ/kg
dh=h305-h295 //Chnage in Specific Enthalpy
dT=305-295 //Change in Temp. in kelvins
cp=dh/dT //Specific heat of air at 300K in kJ/kg-K
printf("\n Hence, the specific heat of air at 300 K is = %.3f kJ/kg-K. \n",cp);