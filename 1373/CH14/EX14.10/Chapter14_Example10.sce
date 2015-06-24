//Chapter-14, Example 14.10, Page 592
//=============================================================================
clc
clear

//INPUT DATA
Td=27;//Dry bulb teperature in degree C
Tw=17;//Wet bulb temperature in degree C
Pr=0.74;//Prantl number
Sc=0.6;//Schmidt number
Mv=18;//Molecular weight of vapour
Ma=29;//Molecular weight of air
Cp=1004;//Specific heat in J/kg.K
p=(1.0132*10^5);//Pressure in N/m^2

//CALCULATIONS
pv2=1917;//Saturation presusre of air at 17 degree C in N/m^2
hfg=2461;//Enthalpy in kJ/kg
w2=(Mv*pv2)/(Ma*(p-pv2));//Weight in kg/kg of dry air
w1=w2-((Cp*(Pr/Sc)^(2/3)*(Td-Tw))/(hfg*1000));//Specific humidity of air in kg/kg of dry air

//OUTPUT
mprintf('Specific humidity of air is %3.5f kg/kg of dry air',w1)

//=================================END OF PROGRAM==============================
