//Chapter-3, Example 3.5, Page 55
//=============================================================================
clc
clear

//INPUT DATA
L=0.2;//Thickness of the wall in m
T=[1000,200];//Surface temperatures in degree C
ko=0.813;//Value of thermal conductivity at T=0 in W/m.K
b=0.0007158;//Temperature coefficient of thermal conductivity in 1/K

//CALCULATIONS
km=ko*(1+((b*(T(1)+T(2)))/2));//Constant thermal conductivity in W/m.K
q=((km*(T(1)-T(2)))/L);//Rate of heat flow in W/m^2

//OUTPUT
mprintf('Rate of heat flow is %3.0f W/m^2',q)

//=================================END OF PROGRAM==============================
