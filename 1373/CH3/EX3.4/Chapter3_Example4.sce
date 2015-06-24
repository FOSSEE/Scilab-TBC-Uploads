//Chapter-3, Example 3.4, Page 55
//=============================================================================
clc
clear

//INPUT DATA
L=0.4;//Thickness of the furnace in m
T=[300,50];//Surface temperatures in degree C
//k=0.005T-5*10^-6T^2

//CALCULATIONS
q=((1/L)*(((0.005/2)*(T(1)^2-T(2)^2))-((5*10^-6*(T(1)^3-T(2)^3))/3)));//Heat loss per square meter surface area in W/m^2

//OUTPUT
mprintf('Heat loss per square meter surface area is %3.0f W/m^2',q)

//=================================END OF PROGRAM==============================
