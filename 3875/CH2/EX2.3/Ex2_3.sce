clc;
clear;
l=20 //room length in m
b=15 //room breadth in m
h=8 //room height in m
capacity=200 //number of seats in hall
Absorption_air=0.012 // per m^3

//Coefficient of Absorption (c)
c_wall=0.09
c_ceiling=0.04
c_floor=0.06 //Value given in the sum is wrong which is 0.60
c_seat=0.64


//calcultion
A1=2*((b*h)+(l*h))*c_wall //in m^2
A2=(l*b)*c_ceiling //in m^2
A3=(l*b)*c_floor //in m^2
A4=(capacity/2)*(1-c_seat) //in m^2
A5=(capacity/2)*(c_seat) //in m^2
Volume=l*b*h //in m^3
A6=Volume*Absorption_air
T=A1+A2+A3+A4+A5+A6 //Total absorptionin m^2
T=0.161*(Volume/(T+A6))

mprintf("Reverberation time = %1.2f s",T) //The answer provided in the textbook is wrong.

