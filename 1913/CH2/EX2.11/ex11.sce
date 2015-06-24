clc
clear
//Input data
E1=4000;//Enthalpy at entrance in kJ/Kg
E2=4100;//Enthalpy at exit in kJ/kg
V1=50;//Velocity at entrance in m/s
V2=20;//Velocity at exit in m/s
h1=50;//Height at the entrance 
h2=10;//Height at the exit
m=1;//mass flow rate to the system in kJ/s
Q=200;//Heat transfer rate to the system in kJ/s
g=9.8;//Gravitational constant in m/s^2

//Calculations
P=m*(((V1^2-V2^2)/(2000))+(g*(h2-h1)/1000)+(E1-E2))+Q;//Power capacity of the system in kW
printf('Power capacity of the system P = %3.4f kW ',P)
