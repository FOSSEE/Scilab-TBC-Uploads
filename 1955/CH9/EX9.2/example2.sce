clc
clear
//input data
H=500//Head over which pelton wheel works in m
P=13000//Power which pelton wheel produces in kW
N=430//Speed of operation of pelton wheel in rpm
n0=0.85//Efficiency of the wheel 
g=9.81//Acceleration due to gravity in m/s^2
dw=1000//Density of water in kg/m^3
Cv=0.98//Veloity coefficient
UC=0.46//Speed ratio

//calculations
Q=(P*10^3)/(dw*g*H*n0)//Discharge of the turbine in m^3/s
C=Cv*(2*g*H)^(1/2)//Jet speed in m/s
U=UC*C//Wheel speed in m/s
D=(U*60)/(3.1415*N)//Wheel diameter in m
d=((Q/C)*(4/3.1415))^(1/2)//Diameter of the nozzle in m

//output
printf('(a)Discharge of the turbine is %3.2f m^3/s\n(b)Diameter of the wheel is %3.2f m\n(c)Diameter of the nozzle is %3.3f m',Q,D,d)
