clc
clear
//Input data 
c1=16;//Velocity of steam at entrance in m/s
c2=37;//Velocity of steam at exit in m/s
h1=2990;//Specific enthalpy of steam at entrance in kJ/kg
h2=2530;//Specific enthalpy of steam at exit in kJ/kg
Q=-25;//Heat lost to the surroundings in kJ/kg
m1=360000;//The steam flow rate in kg/hr

//Calculations
m=m1/3600;//The steam flow rate in kg/s
W=(((c1^2-c2^2)/(2*1000))+(h1-h2))+Q;//Total work done in the system in kJ/kg
P=m*W;//Power developed by the turbine in kW
//Output
printf('The work output from the turbine P = %3.1f kW ',P)
