//Chapter-3, Example 3.35, Page 119
//=============================================================================
clc
clear

//INPUT DATA
k=55.8;//Thermal conductivity of steel in W/m.K
t=0.0015;//Thickness of steel tube in m
L=0.12;//Length of steel tube in m
h=23.3;//Heat transfer coefficient in W/m^2.K
Tl=84;//Temperature recorded by the thermometer in degree C
Tb=40;//Temperature at the base of the well in degree C

//CALCULATIONS
m=sqrt(h/(k*t));//Calculation of m for determining the temperature distribution
x=1/cosh(m*L);//Calculation of x for determining the temperature distribution
Ti=((Tl-(x*Tb))/(1-x));//Temperature distribution in degree C
T=(Ti-Tl);//Measurement error in degree C

//OUTPUT
mprintf('Measurement error is %3.0f degree C',T)

//=================================END OF PROGRAM==============================
