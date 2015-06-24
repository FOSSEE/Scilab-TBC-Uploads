clc
clear
//INPUT DATA
Ix=1 //current in first wire
Iy=1 //current in second wire
FbyL=2*10^-7 //according to the definition of ampere
a=1 //distance between the wires


//calculation

m=(2*%pi*a*FbyL)/(Ix*Iy)



//output
printf("the permeability of free space is %3.3e H/m  ",m)