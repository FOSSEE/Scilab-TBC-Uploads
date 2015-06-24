clc
clear
//input data
N=2875//Speed of the pump in rpm 
Q=57.2/3600//Discharge of the pump in m^3/s
Hm=42.1//Total head developed by the pump in m
d=1000//Density of the water in kg/m^3
g=9.81//Acceleration due to gravity in m/s^2
n=0.76//Efficiency of the pump

//calculations
Ns=(N*Q^(1/2))/(Hm^(3/4))//Specific speed of the pump 
P=((d*g*Q*Hm)/n)*10^-3//Power input in kW

//calculations
printf('(a)Specific speed of the pump is %3.f\n(b)Power input is %3.3f kW',Ns,P)
