
clc
clear
//Input data
C=210//Capacity of thermal power plant in MW
P=160//Maximum load in MW
L=0.6//Annual load factor 
m=1//Coal consumption per kWh of energy generated
Rs=450//Cost of coal in Rs per tonne
Y=8760//Number of hours in a year of 365 days

//Calculations
AL=(L*P)//Average load in MW
E=(AL*Y)//Energy generated per year in MWh
CL=(E*1000)//Coal required per year in kg
CY=(E*Rs)//Cost of coal per year
CE=CL//Cost of energy sold in Rs
RY=(CE-CY)/10^7//Revenue earned by the power plant per year in Rs crore
CF=(AL/C)//Capacity factor

//Output
printf('(a) The annual revenue earned by the power plant is Rs %3.2f crore \n(b) Capacity factor is %3.3f',RY,CF)
