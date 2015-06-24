//Chapter-1, Example 1.1, Page 9
//=============================================================================
clc
clear

//INPUT DATA
L=0.02;//Thicness of stainless steel plate in m
T=[550,50];//Temperatures at both the faces in degree C
k=19.1;//Thermal Conductivity of stainless steel at 300 degree C in W/m.K

//CALC9ULATIONS
q=((k*(T(1)-T(2)))/(L*1000));//Heat transfered per uni area in kW/m^2

//OUTPUT
mprintf('The heat transfered through the material per unit area is %3.1f kW/m^2',q)

//=================================END OF PROGRAM==============================
