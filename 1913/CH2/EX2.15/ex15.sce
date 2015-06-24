clc
clear
//Input data
m1=5000;//Steam flow rate in kg/hr
Q1=-250;//Heat loss from the turbine insulation to surroundings in kj/min
C1=40;//Velocity of steam at entrance in m/s
h1=2500;//Enthalpy of the steam at entrance in kJ/kg
C2=90;//Velocity of the steam at the Exit in m/s
h2=2030;//Enthalpy of the steam at exit in kj/kg
Z=0;//Change in potential energy is neglected in m
g=9.81;//Gravitational constant in m/s^2

//Calculations
m=m1/3600;//Steam flow rate in kg/s
Q=Q1/60;//Heat loss from the turbine to the surroundings
P=m*(((C1^2-C2^2)/(2*1000))+(g*Z)+(h1-h2))+Q;//Power developed by the turbine in kW

//Output
printf('The power developed by the turbine P = %3.3f kW ',P)
