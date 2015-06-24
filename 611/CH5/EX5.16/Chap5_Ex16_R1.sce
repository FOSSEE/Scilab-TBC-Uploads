// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-5,Example 16,Page 183
//Title: Rate at which entropy is generated
//================================================================================================================
clear 
clc

//INPUT
N_glycerol=100;//molar flow rate of glycerol in mol/s
Ti_gly=227;//inlet temperature of glycerol in degree celsius
Te_gly=40;//outlet temperature of glycerol in degree celsius
Ti_water=25;//inlet temperature of cooling water in degree celsius
Te_water=50;//outlet temperature of cooling water in degree celsius
Cp_gly=280;//heat capacity of glycerol in J/molK
Cp_water=77;//heat capacity of water in J/molK

//CALCULATION
Ti_gly=Ti_gly+273.15;//conversion of temperature in K
Te_gly=Te_gly+273.15;//conversion of temperature in K
Ti_water=Ti_water+273.15;//conversion of temperature in K
Te_water=Te_water+273.15;//conversion of temperature in K
//calculation of the molar flow rate of water in mol/s by applying the first law of thermodynamics on the control-volume
N_water=-(N_glycerol*Cp_gly*(Te_gly-Ti_gly))/(Cp_water*(Te_water-Ti_water));
del_S_gly=N_glycerol*Cp_gly*log (Te_gly/Ti_gly)*10^-3;//calculation of change in entropy of glycerol in kJ/K s
del_S_water=N_water*Cp_water*log (Te_water/Ti_water)*10^-3;//calculation of change in entropy of water in kJ/K s
S_G=del_S_gly+del_S_water;//calculation of the rate at which entropy is generated  in the heat exchanger in kJ/K s

//OUTPUT
mprintf("\n The rate at which entropy is generated in the heat exchanger=%0.3f kJ/K s\n",S_G);


//===============================================END OF PROGRAM===================================================
