//Chapter-10, Example 10.28, Page 453
//=============================================================================
clc
clear

//INPUT DATA
Ts=200+273;//Temperature of stream main in K
Ta=30+273;//Rooom temperature in K
h=17.98;//Heat transfer coefficient in W/m^2.K
e=0.8;//Emissivity of the pipe surface

//CALCULATIONS
q=(5.67*10^-8*e*(Ts^4-Ta^4));//Heat transfer by radiation in W/m^2
hr=(q/(Ts-Ta));//Heat transfer coefficient due to radiation in W/m^2.K
hc=(h-hr);//Heat transfer coefficient due to convection in W/m^2.K

//OUTPUT
mprintf('Heat transfer coefficient due to radiation is %3.1f W/m^2.K \nHeat transfer coefficient due to convection is %3.2f W/m^2.K',hr,hc)

//=================================END OF PROGRAM==============================
