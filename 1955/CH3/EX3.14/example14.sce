clc
clear
//input data
dH=0.14//Rise in static pressure of the air by fan in m of water
N=650//The running speed of the fan in rpm
P=85*0.735//Power consumed by the fan in kW
H1=0.75//The static pressure of the air at the fan in m of Hg
T1=298//The static pressure at the fan of air in K
m=260//Mass flow rate of air in kg/min
dHg=13590//Density of mercury in kg/m^3
dw=1000//Density of water in kg/m^3
g=9.81//Acceleration due to gravity in m/s^2
R=287//The universal gas constant in J/kg.K

//calculations
P1=dHg*g*H1*10^-3//The inlet static pressure in kPa
dP=dw*g*dH*10^-3//The total change in static pressures at inlet and outlet in kPa
P2=P1+dP//The exit static pressure in kPa
d1=(P1*10^3)/(R*T1)//The inlet density of the air in kg/m^3
Q=m/d1//The volume flow rate of air in fan in m^3/min

//output
printf('(a)The exit static pressure of air in the fan is %3.2f kPa\n(b)The volume flow rate of the air is %3.1f m^3/min',P2,Q)
