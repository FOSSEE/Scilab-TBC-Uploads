//example 11
//rate of change of temperature
clear
clc
Q=1500 //power produced by burning wood in J/s
mair=1 //mass of air in kg
mwood=5 //mass of soft pine wood in kg 
miron=25 //mass of cast iron in kg
Cvair=0.717 //constant volume specific heat for air in kJ/kg
Cwood=1.38 //constant volume specific heat for wood in kJ/kg
Ciron=0.42 //constant volume specific heat for iron in kJ/kg
dT=75-20 //increase in temperature in Celsius
T=(Q/1000)/(mair*Cvair+mwood*Cwood+miron*Ciron) //rate of change of temperature in K/s
dt=(dT/T)/60 //in minutes
printf(" hence,the rate of change of temperature is dt=%.4f K/s.\n", T)
printf(" and time taken to reach a temperature of T=%.0f min.\n", dt)