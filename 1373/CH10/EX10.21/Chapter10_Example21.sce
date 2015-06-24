//Chapter-10, Example 10.21, Page 434
//=============================================================================
clc
clear

//INPUT DATA
T1=127+273;//Temperature of the outer side of the brick setting in K
T2=50+273;//Temperature of the inside of the steel plate in K
e1=0.6;//Emissivity of steel
e2=0.8;//Emissivity of fireclay

//CALCULATIONS
Q=((5.67*10^-8*(T1^4-T2^4))/((1/e1)+((1/e2))-1));//Net radiant heat exchange in W/m^2

//OUTPUT
mprintf('Net radiant heat exchange is %3.0f W/m^2',Q)

//=================================END OF PROGRAM==============================
