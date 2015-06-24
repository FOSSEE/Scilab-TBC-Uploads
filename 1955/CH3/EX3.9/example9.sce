clc
clear
//input data
P1=100//The air in take pressure in kPa
T1=309//The air in take temperature in K
H=0.750//Pressure head developed in mm W.G
P=33//Input power to blower in kW
nb=0.79//Blower efficiency
nm=0.83//Mechanical efficiency
r=1.4//The ratio of specific heats of air
R=287//The universal gas constant in J/kg.K
Cp=1005//The specific heat of air at constant pressure in J/kg.K
g=9.81//Acceleration due to gravity in m/s^2
dw=1000//Density of water in kg/m^3

//calculations
d=(P1*10^3)/(R*T1)//Density of air flow at inlet in kg/m^3
dP=dw*g*H//Total change in pressure in N/m^2
IW=dP/d//Ideal work done in J/kg
Wm=IW/nb//Actual work done per unit mass flow rate in J/kg
W=P*nm//Actual power input in kW
m=(W*10^3)/Wm//Mass flow rate in kg/s
Q=m/d//Volume flow rate in m^3/s
P2=P1+(dP/10^3)//The exit pressure of air in kPa
T2=T1+(Wm/(Cp))//The exit temperature of air in K

//output
printf('(a)The mass flow rate of air is %3.3f kg/s\n(b)The volume flow rate of air is %3.2f m^3/s\n(c)\n    (1)The exit pressure of air is %3.2f kPa\n    (2)The exit temperature of air is %3.2f K',m,Q,P2,T2)
