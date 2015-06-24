clc
clear
//Input data
m=5;//Rate of fluid flow in the system in kg/s
P1=620;//Pressure at the entrance in kPa
P2=130;//Pressure at the exit in kPa
C1=300;//Velocity at the entrance in m/s
C2=150;//Velocity at the exit in m/s
U1=2100;//Internal energy at the entrance in kJ/kg
U2=1500;//Internal energy at the exit in kJ/kg
V1=0.37;//Specific volume at entrance in m^3/kg
V2=1.2;//Specific volume at exit in m^3/kg
Q=-30;//Heat loss in the system during flow in kJ/kg
Z=0;//Change in potential energy is neglected in m
g=9.81;//Gravitational constant in m/s^2

//Calculations
W=((C1^2-C2^2)/(2*1000))+(g*Z)+(U1-U2)+(P1*V1-P2*V2)+Q;//Total work done in the system in kJ/kg
P=W*m;//Power capacity of the system in kW

//Output
printf('(a)Total work done in the system W = %3.2f kJ/kg \n (b)Power capacity of the system P = %3.2f kW ',W,P)
