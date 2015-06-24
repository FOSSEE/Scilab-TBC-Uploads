clc
clear
//input data
n0=0.7//Overall efficiency
Q=0.025//Discharge of water by the pump in m^3/s
H=20//Height of supplied by the pump in m
D=0.1//Diameter of the pump in m
L=100//Length of the pipe in m
f=0.012//Friction coefficient 
g=9.81//Acceleration due to gravity in m/s^2
d=1000//Density of water in kg/m^3

//calculations
V0=Q/((3.1415/4)*D^2)//Velocity of water in the pipe in m/s
hf0=(4*f*L*V0^2)/(2*g*D)//Loss of head due to friction in pipe in m
Hm=H+hf0+(V0^2/(2*g))//Manometric head in m
P=(d*g*Q*Hm)/(n0)*10^-3//Power required to drive the pump in kW

//output
printf('Power required to drive the pump is %3.2f kW',P)
