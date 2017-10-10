//Example 10.5, Page Number 514
//Polarization Rotation
clc;
//For Silica
V=4 //in Radian / m T
n=10 //No of turns
I=30 //Current in Ampere
ur=1 //Relative permeability
uo=4*%pi*(10**-7) //Absolute permeability

t=%pi/180
thetar=uo*n*V*I*t //thetar is the polarization rotation

mprintf("The Amount of Polarization rotation is  %f degree\n",thetar);
//The answer provided in the textbook is wrong
