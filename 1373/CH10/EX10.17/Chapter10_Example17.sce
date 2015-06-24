//Chapter-10, Example 10.17, Page 431
//=============================================================================
clc
clear

//INPUT DATA
D=[2,1,1];//Dimensions of the tank in m
A=8;//Area of the tank in m^2
e=0.9;//Surface emissivity 
Ts=25+273;//Surface temperature in K
Ta=2+273;//Ambient temperature in K
e1=0.5;//Emissivity of aluminium 

//CALCULATIONS
Q=(e*A*5.67*10^-8*(Ts^4-Ta^4))/1000;//Heat lost by radiation in kW
r=((e-e1)/e)*Q;//Reduction in heat loss if the tank is coated with an aluminium paint in kW

//OUTPUT
mprintf('Heat lost by radiation is %3.2f kW \nReduction in heat loss if the tank is coated with an aluminium paint is %3.3f kW',Q,r)

//=================================END OF PROGRAM==============================
