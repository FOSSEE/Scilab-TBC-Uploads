clc
clear
//Input data
m=0.05//Mass of the body in kg
v=[3,5]//Velocity in vector form 3i+4j in m/s

//Calculations
ke=(1/2)*m*(v(1)^2+v(2)^2)//Kinetic energy in J

//Output
printf('Kinetic energy is %3.2f J',ke)
