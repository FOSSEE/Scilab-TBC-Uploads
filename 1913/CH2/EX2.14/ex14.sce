clc
clear
P1=100;//Pressure at Inlet in kPa
P2=500;//Pressure at Exit in kPa
V1=0.6;//Specific volume at Inlet in m^3/kg
V2=0.15;//Specific volume at Exit in m^3/kg
U1=50;//Specific internal energy at inlet in kJ/kg
U2=125;//Specific internal energy at Exit in kJ/kg
C1=8;//Velocity of air at Inlet in m/s
C2=4;//Velocity of air at Exit in m/s
m=5;//Mass flow rate of air in kg/s
Q=-45;//Heat rejected to cooling water in kW
Z=0;//Change in potential energy is neglected in m
g=9.81;//Gravitational constant in m/s^2

//Calculations
P=m*(((C1^2-C2^2)/(2*1000))+(g*Z)+(U1-U2)+(P1*V1-P2*V2))+Q;//Power required to drive the compressor in kW
P1=-P;//Power required to drive the compressor in kW

//Output
printf('The power required to drive the compressor P = %3.2f kW ',P1)
