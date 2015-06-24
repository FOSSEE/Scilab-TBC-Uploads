
clc
clear

//INPUT DATA
u=3.5*10^2;//Speed of the cyclist in m/s
v=2*10^3;//Speed of the train in m/s
c=3*10^8;//Speed of light in m/s

//CALCULATIONS
U=((u+v)/(1+((u*v)/c^2)))/1000//Relative speed in km/s

//OUTPUT
mprintf('The relative speed is %3.2f*10^3 m/s',U)
