//Chapter-7, Example 7.19, Page 314
//=============================================================================
clc
clear

//INPUT DATA
Di=0.015;//I.D of the tube in m
Tb=60;//Temperature of the tube in degree C
m=10;//Flow rate of water in ml/s
Ti=20;//Temperature of water at entry in degree C
x=1;//Distance form the plane in m
Tx=34;//Temperature of water at 1 m distance in degree C

//CALCULATIONS
Tbm=(Ti+Tx)/2;//Mean value of bulk temperature in degree C
pw=997;//Density of air at 27 degree C in kg/m^3
Cp=4180;//Specific heat of air at 27 degree C in J/kg.K
u=(855*10^-6);//Dynamic viscosity of air at 27 degree C in N.s/m^2
k=0.613;//Thermal conductivity of air at 27 degree C in W/m.K
Pr=5.83;//prantl number of air at 27 degree C
us=(464*10^-6);//Dynamic viscosity of air at 60 degree C in Ns/m^2
um=(m*10^-6)/((3.14/4)*Di^2);//Mean speed in m/s
Re=(pw*um*Di)/u;//Reynolds number
Nu=3.66+((0.0668*(Di/x)*Re*Pr)/(1+(0.04*((Di/x)*Re*Pr)^(2/3))));//Nusselts number in Haussen correlation
Nux=(1.86*((Re*Pr)/(x/Di))^(1/3)*(u/us)^0.14);//Nusselsts number in Sieder - Tate correlation 

//OUTPUT
mprintf('Nusselts number in Haussen correlation is %3.2f \nNusselsts number in Sieder - Tate correlation is %3.3f',Nu,Nux)

//=================================END OF PROGRAM==============================
