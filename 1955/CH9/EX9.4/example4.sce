clc
clear
//input data
n=2//Number of jets 
SP=20000*0.736//Shaft power of the wheel in kW
D=0.15//Diameter of each jet in m
H=500//Net head on the turbine in m
Cv=1.0//Velocity coefficient
g=9.81//Acceleration due to gravity in m/s^2
d=1000//Density of water in kg/m^3

//calculations
C1=Cv*(2*g*H)^(1/2)//Velocity of each jet in m/s
A=(3.1415/4)*D^2//Area of each jet in m^2
Qj=A*C1//Discharge of each jet in m^3/s
Q=2*Qj//Total discharge in m^3/s
P=d*g*Q*H*10^-3//Power at turbine inlet in kW
no=SP/P//Overall efficiency

//output
printf('The overall efficiency of the turbine is %3.3f',no)
