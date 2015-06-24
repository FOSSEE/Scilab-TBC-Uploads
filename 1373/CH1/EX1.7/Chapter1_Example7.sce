//Chapter-1, Example 1.7, Page 21
//=============================================================================
clc
clear

//INPUT DATA
A=0.1;//Surface area of water heater in m^2
Q=1000;//Heat transfer rate in W
Twater=40;//Temperature of water in degree C
h1=300;//Heat transfer coefficient in W/m^2.K
Tair=40;//Temperature of air in degree C
h2=9;//Heat transfer coefficient in W/m^2.K 

//CALCULATIONS
Tsw=(Q/(h1*A))+Twater;//Temperature when used in water in degree C
Tsa=(Q/(h2*A))+Tair;//Temperature when used in air in degree C

//OUTPUT
mprintf('Temperature when used in water is %3.1f degree C \n Temperature when used in air is %i degree C',Tsw,Tsa)

//=================================END OF PROGRAM==============================
