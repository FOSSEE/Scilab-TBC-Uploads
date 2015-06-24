clc
clear
//Input data
td=7.5//Throat diameter in cm
Ca=0.85//Coefficient of air flow
fd=0.5//Diameter of fuel orifice in cm
Cd=0.7//Coefficient of discharge
l=5//Nozzle lip in mm
x=1//Approach factor
dpa=0.15//Pressure drop in kg/cm^2
da=1.29//Density of air in kg/m^3
dp=720//Density of fuel in kg/m^3

//Calculations
v=sqrt(2*9.81*(l/1000)*(dp/da))//Velocity of air in m/s

//Output
printf('Velocity of air flow is %3.1f m/s',v)
