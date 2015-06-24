// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-5,Example 13,Page 179
//Title: Change in the entropy of the mixture
//================================================================================================================
clear 
clc

//INPUT
m_ice=10;//mass of the block of ice in kg
T_ice=0;//temperature of the ice in degree celsius
m_water=100;//mass of watre in the tank in kg
T_water=30;//temperature of the water in the tank in degree celsius
Cp=4.23;//heat capacity of water in kJ/kgK
lambda_melting=333.44;//latent heat of melting of ice in kJ/kg

//CALCULATION
Ti_ice=T_ice+273.15;//conversion of temperature in K
Ti_water=T_water+273.15;//conversion of temperature in K

//applying the first law of thermodynamics, an energy balance on the system is established from which the final temperature of water is determined

T_final=((m_water*Cp*Ti_water)+(m_ice*Cp*Ti_ice)-(m_ice*lambda_melting))/((m_ice*Cp)+(m_water*Cp));//calculation of final temperature of water in K
del_S_ice=((m_ice*lambda_melting)/(Ti_ice))+(m_ice*Cp*log (T_final/Ti_ice));//calculation of entropy change of ice in kJ/K
del_S_water=m_water*Cp*log (T_final/Ti_water);//calculation of entropy change of water in kJ/K
del_S_G=del_S_ice+del_S_water;//calculation of entropy generated using Eq.(5.54) in kJ/K

//OUTPUT
mprintf("\n The change in entropy of ice = %f kJ/K\n",del_S_ice);
mprintf("\n The change in entropy of water = %f kJ/K\n",del_S_water);
mprintf("\n The entropy generated= %f kJ/K\n",del_S_G);

//===============================================END OF PROGRAM===================================================
