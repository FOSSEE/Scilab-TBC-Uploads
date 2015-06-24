//Chapter-10, Example 10.26, Page 451
//=============================================================================
clc
clear

//INPUT DATA
e=0.6;//Emissivity of thermocouple
Ta=20+273;//Ambient temperature in K
Tt=500+273;//Temperature from the thermocouple in K
e=0.3;//Emissivity of radiation shield
h=200;//Convective heat transfer coefficient in W/m^2.K
Ts=833;//Temperature in K

//CALCULATIONS
T=((5.67*10^-8*e*(Tt^4-Ta^4))/(h*1000))+Tt;//Temperature of the shield in K
T1=(Ts-T);//Error between the thermocouple temperature and gas temperature in K
Ts=825;//Surface temperature with radiation shield in K
Tc=829;//Thermocouple temperature with radiation shield in K
e=(Tc-Ts);//Error between the thermocouple temperature and gas temperature with the shielded thermocouple arrangement in K

//OUTPUT
mprintf('Error between the thermocouple temperature and gas temperature is%3.0f K \nError between the thermocouple temperature and gas temperature with the shielded thermocouple arrangement is%3.0f K',T1,e)

//=================================END OF PROGRAM==============================
