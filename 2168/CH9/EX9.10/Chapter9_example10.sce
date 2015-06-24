clc
clear
//Input data
x=2.8//Height above the nozzle in mm
va=58//Velocity of air in m/s
da=1.28//Density of air in kg/m^3
dp=750//Density of petrol in kg/m^3
An=1.8//Area of cross section of nozzle in mm^2
Cd=0.6//Coefficient of discharge of nozzle 
Ca=0.84//Coefficient of discharge of air

//Calculations
dpa=((va/Ca)^2*(da/(2*9.81)))//Change in pressure in kg/m^2
wf=((An*10^-6)*Cd*sqrt(2*9.81*dp*(dpa-((x/1000)*dp))))//Petrol consumption in kg/sec

//Output
printf('Petrol consumption is %3.4f kg/sec',wf)
