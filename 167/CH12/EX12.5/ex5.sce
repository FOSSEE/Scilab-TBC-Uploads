//example 5
//Evaluating the hfg of a Substance from the P-v-T Data
clear
clc
vg=0.035969 //in m^3/kg
vf=0.0008161 //in m^3/kg
vfg=vg-vf //in m^3/kg at  20°C 
dT=24-16 //change in Temp. in C
Psat1=646.18 //saturation presssure at 24 C in kPa
Psat2=504.58 //saturation pressure at 16C in kPa
dP=Psat1-Psat2 //Difference between saturation pressures in kPa
T=293.15 //Difference between temp. in K
hfg=T*vfg*dP/dT //Enthalpy of vaporization in kJ/kg
printf("\n Hence, the enthalpy of vaporization of refrigerant 134-a is = %.2f kJ/kg. \n",hfg);