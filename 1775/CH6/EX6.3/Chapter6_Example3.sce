//Chapter-6, Illustration 3, Page 309
//Title: Refrigeration cycles
//=============================================================================
clc
clear

//INPUT DATA
TL=-10;//Temperature of brine in oC
TH=20;//Temperature of water in oC
L=335;//Latent heat of ice in kJ/kg

//CALCULATIONS
Qr=(4.187*(TH-0))+L;//Heat removed from water in kJ/kg
COP=(TL+273)/(TH-TL);//Co-efficient of performance
mi=(COP*3600)/Qr;//mass of ice formed per kWh in kg

//OUTPUT
mprintf('Mass of ice formed per kWh is %3.1f kg',mi)






//==============================END OF PROGRAM=================================
