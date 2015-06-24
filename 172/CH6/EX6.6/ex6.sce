//example 6
//power output of turbine in kW
clear
clc
hi=3137 //initial specific heat of enthalpy in kJ/kg
he=2675.5 //final specific heat of enthalpy in kJ/kg
Vi=50 //initial velocity of steam in m/s
Ve=100 //final velocity of steam in m/s
Zi=6 //height of inlet conditions in metres
Ze=3 //height of exit conditions in metres
m=1.5 //mass flow rate of steam in kg/s
g=9.8066 //acc. due to gravity in m/s^2
Qcv=-8.5 //heat transfer rate from turbine in kW
Wcv=Qcv+m*(hi+Vi^2/(2*1000)+g*Zi/1000)-m*(he+Ve^2/(2*1000)+g*Ze/1000) //power output of turbine in kW
printf("\n hence,the power output of the turbine is Wcv=%.3f kW. \n",Wcv)