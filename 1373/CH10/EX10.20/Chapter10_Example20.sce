//Chapter-10, Example 10.20, Page 433
//=============================================================================
clc
clear

//INPUT DATA
T=[800+273,300+273];//Temperatures of the plates in K
e=[0.3,0.5];//Emissivities of the plates

//CALCULATIONS
Q=((5.67*10^-8*(T(1)^4-T(2)^4))/((1/e(1))+((1/e(2)))-1))/1000;//Net radiant heat exchange in kW/m^2

//OUTPUT
mprintf('Net radiant heat exchange is %3.2f kW/m^2',Q)

//=================================END OF PROGRAM==============================
