clc
clear
//Input data
v=5000//Velocity of sound in steel in m/s
f=(50*10^3)//Difference between two adjacent frequencies in Hz

//Calculations
d=(v/(2*f))//Thickness of the plate in m

//Output
printf('The thickness of the steel plate is %3.2f m',d)
