//example 10
//mass  flow rate
clear
clc
dt=185 //time period in seconds over which there is incrrease in volume 
dV=0.75 //increase in volume in 0.75 in m^3
V=dV/dt //volume flow rate in m^3/s
P=105 //pressure inside gas bell kPa
T=21 //temperature in celsius
R=0.1889 //ideal gas constant in kJ/kg-K
m=P*V/(R*(T+273.15)) //mass flow rate of the flow in kg/s
printf("\n hence,mass flow rate is m = %.3f kg/s. \n",m)
printf("\n and volume flow rate is V = %.3f m^3/s. \n",V)