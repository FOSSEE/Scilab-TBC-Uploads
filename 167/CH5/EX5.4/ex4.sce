//example 4
//deceleration of air in diffuser
clear
clc
disp('we assume that Air is an ideal gas since it is at a high temperature and low pressure relative to its critical-point values ')
T1=283 //Initial temp. of air in kelvins  
P1=80 //initial pressure of air in kPa
R=0.287 //gas constant in kPa-m3/kg-K
A1=0.4 //inlet area in m^2
v1=200 //inintial velocity of air in m/s
V1=R*T1/P1 //specific volume of air in m^3/kg
m=v1*A1/V1 //mass flow rate in kg/s
h1=283.14 // specific enthalpy of air in kJ/kg
v2=0 //exit velocity is very small compared to initial velocity
h2=h1-(v2^2-v1^2)/2000 //final specific enthalpy of air in kJ/kg
disp('from steam table , the temperature corresponding to this value of enthalpy is')
T2=303 //Temp. of air leaving the diffuser in K
printf("\n Hence,The mass flow rate of the air is = %.1f kg/s. \n",m);
printf("\n The temp. of air leaving the diffuser is = %.0f K. \n",T2);