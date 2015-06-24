//Chapter-8, Example 8.12, Page 353
//=============================================================================
clc
clear

//INPUT DATA
D=0.1;//Outer diamter of the pipe in m
Ta=30;//Ambient temperature of air degree C
Ts=170;//Surface temperature in degree C
e=0.9;//Emissivity 

//CALCULATIONS
h=(1.32*((Ts-Ta)/D)^0.25);//Heat transfer coefficient in W/m^2.K
q=(h*3.1415*D*(Ts-Ta));//Heat transfer in W/m

//OUTPUT
mprintf('Heat loss due to free convection is %3.2f W/m',q)

//=================================END OF PROGRAM==============================
