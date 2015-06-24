// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-5,Example 3,Page 165
//Title: Minimum power required
//================================================================================================================
clear 
clc

//INPUT
T_source_summer=42;//temperature in the summer months in degree celsius
T_sink_winter=0;//temperature in the winter months in degree celius
T_amb=25;//temperature at which the house is to be maintained during both the months in degree celsius
//rate of energy loss from the windows,walls and roof, in kW per degree celsius difference between the ambient temperature and the conditions inside the room
energy_loss=0.5;

//CALCULATION
T_H_summer=T_source_summer+273.15;//conversion of temperature in K
T_L_summer=T_amb+273.15;//conversion of temperature in K
T_H_winter=T_amb+273.15;//conversion of temperature in K
T_L_winter=T_sink_winter+273.15;//conversion of temperature in K
W_summer=(energy_loss*((T_H_summer-T_L_summer)^2))/(T_L_summer);//calculation of the minimum power required to operate the device in summer using Eq.(5.20) in kW
W_winter=(energy_loss*((T_H_winter-T_L_winter)^2))/(T_H_winter);//calculation of the minimum power required to operate the device in winter using Eq.(5.21) in kW

//OUTPUT
mprintf("\n The minimum power required to operate the device in summer=%f kW \n",W_summer);
mprintf("\n The minimum power required to operate the device in winter=%f kW \n",W_winter);

//===============================================END OF PROGRAM===================================================

//DISCLAIMER: THE ANSWER GIVEN FOR THE MINIMUM POWER REQUIRED TO OPERATE THE DEVICE IN WINTER, IS NUMERICALLY INCORRECT IN THE TEXTBOOK.
