//Chapter-9, Example 9.7, Page 391
//=============================================================================
clc
clear

//INPUT DATA
Ts=(37+273);//Temperature of metallic bar in K
T=1100;//Interior temperature in K
a=0.52;//Absorptivity at 1100 K
e=0.8;//Emissivity at 310 K
//CALCULATIONS
Q=(a*5.67*10^-8*T^4)/1000;//Rate of absorption in kW/m^2
E=(e*5.67*10^-8*Ts^4)/1000;//Rate of emissin in kW/m^2

//OUTPUT
mprintf('Rate of absorption is %3.2f kW/m^2 \nRate of emissin is %3.2f kW/m^2',Q,E)

//=================================END OF PROGRAM==============================
