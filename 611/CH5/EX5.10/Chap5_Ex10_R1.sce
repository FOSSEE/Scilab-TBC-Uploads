// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-5,Example 10,Page 173
//Title: Change in entropy of steel and water
//================================================================================================================
clear 
clc

//INPUT
m_steel=10;//mass of steel casting in kg
T_steel=800;//temperature of steel casting in degree celsius
m_water=100;//mass of water used for quenching in kg
T_water=30;//temperature of water used for quenching in degree celsius
Cp_steel=0.461;//heat capacity of steel in kJ/kgK
Cp_water=4.23;//heat capacity of water in kJ/kgK

//CALCULATION
Ti_steel=T_steel+273.15;//conversion of temperature in K
Ti_water=T_water+273.15;//conversion of temperature in K
//calculation of final temperature of steel and water usung the first law of thermodynamics in K
T_final=((m_steel*Cp_steel*Ti_steel)+(m_water*Cp_water*Ti_water))/((m_steel*Cp_steel)+(m_water*Cp_water));
del_S_steel=m_steel*Cp_steel*log(T_final/Ti_steel);//calculation of the entropy change of steel using Eq.(5.32) in kJ/K
del_S_water=m_water*Cp_water*log(T_final/Ti_water);//calculation of the entropy change of water using Eq.(5.32) in kJ/K

//OUTPUT
mprintf("\n The change in entropy of steel = %0.4f kJ/K\n",del_S_steel);
mprintf("\n The change in entropy of water = %f kJ/K\n",del_S_water);

//===============================================END OF PROGRAM===================================================
