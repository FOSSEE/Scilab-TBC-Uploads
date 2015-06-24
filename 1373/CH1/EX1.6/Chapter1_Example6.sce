//Chapter-1, Example 1.6, Page 21
//=============================================================================
clc
clear

//INPUT DATA
D=0.05;//Outside diameter of the pipe in m
e=0.8;//Emmissivity
T=30;//Room Temperature in degree C
Ts=250;//Surface temperature in degree C
h=10;//Convective heat transfer coefficient in W/m^2.K

//CALCULATIONS
q=((h*3.14*D*(Ts-T))+(e*3.14*D*5.67*10^-8*((Ts+473)^4-(T+273)^4)));//Heat loss per unit length of pipe in W/m

//OUTPUT
mprintf('Heat loss per unit length of pipe is %3.1f W/m',q) 

//=================================END OF PROGRAM==============================
