//example 2
//An Actual Steam Power Cycle
clear
clc
V1=0.001009 //specific volume of steam in m3/kg
P1=9 // pressure in state 1 in kPa
P2=16000 //pressure in state 2 final pressure in kPa
np=0.85 //isentropic efficiency of pump
nt=0.87 //isentropic efficiency of turbine
wpumpin=V1*(P2-P1)/np //pump work input in kJ/kg
h4=3647.6 //specific enthalpy in state 4 in kJ/kg   
h3=160.12 //specific enthalpy in state 3 in kJ/kg
qin=h4-h3 //boiler heat input in kJ/kg
h5=3583.1 //specific enthalpy in state 3 in kJ/kg
h6=2115.32 //specific enthalpy in state 3 in kJ/kg
wturbout=nt*(h5-h6) //work output of turbine in kJ/kg
wnet=wturbout-wpumpin //net work done in kJ/kg
n=wnet/qin//themal efficiency of the cycle
m=15 //mass flow rate in kg/s
Wnet=m*wnet //power produced by the power plant in kW
printf("\n Hence, the thermal efficiency of the cycle is = %.3f . \n",n);
printf("\n Hence, net power output of the plant is = %.1f MW. \n",Wnet/1000);