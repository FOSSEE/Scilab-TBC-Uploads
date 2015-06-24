clc
clear
//input data
Hi=0.25//Vaccum gauge reading in m of Hg vaccum
P0=1.5//Pressure gauge reading in bar
Z01=0.5//Effective height between gauges in m
P=22//Power of electric motor in kW
Di=0.15//Inlet diameter in m
Do=0.15//Outlet diameter in m
Q=0.1//Discharge of pump in m^3/s
dHg=13600//Density of mercury in kg/m^3
dw=1000//Density of water in kg/m^3
g=9.81//Acceleration due to gravity in m/s^2

//calculations
Pi=dHg*g*Hi//Inlet pressure in N/m^2 vaccum
Po=P0*10^5//Outlet pressure in N/m^2
V0=Q/((3.1415*Do^2)/4)//Velocity of water in delivery pipe in m/s
Vi=V0//vleocity of water in suction pipe in m/s
Hm=((Po+Pi)/(dw*g))+((V0^2-Vi^2)/(2*g))+(Z01)//Manometric head in m
n0=(dw*g*Q*Hm)/(P*10^3)//Overall efficiency 

//output
printf('(a)Manometric head is %3.2f m\n(b)Overall efficiency is %3.3f',Hm,n0)
