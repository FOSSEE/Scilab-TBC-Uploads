clc
clear
//input data
Q=2.5//The amount of air which fan takes in m^3/s
P1=1.02//The inlet pressure of air in bar
T1=315//The inlet temperature of air in K
dH=0.75//The pressure head delivered by axial flow fan in m W.G
T2=325//The delivery temperature of air in K
R=287//The universal gas constant in J/kg.K
Cp=1.005//The specific heat of air at constant pressure in kJ/kg.K
r=1.4//The ratio of specific heats of air
g=9.81//Acceleration due to gravity in m/s^2

//calculations
d=(P1*10^5)/(R*T1)//The density of air in kg/m^3
m=d*Q//The mass flow rate of air in kg/s
W=m*Cp*(T2-T1)//Power required to drive the fan in kW
dP=((10^3)*g*dH)/(10^5)//The overall pressure difference in bar
P2=P1+(dP)//The exit pressure in bar
nf=((T1*(((P2/P1)^((r-1)/r))-1))/(T2-T1))//Static fan efficiency

//output
printf('(a)Mass flow rate through the fan is %3.2f kg/s\n(b)Power required to drive the fan is %3.2f kW\n(c)Static fan efficiency is %3.4f',m,W,nf)
