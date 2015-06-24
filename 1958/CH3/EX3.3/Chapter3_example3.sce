clc
clear
//Input data
m=0.5//Mass of the block in kg
x=0.05//Distance to which block is pulled in m
k=300//Force constant of the spring in N/m

//Calculations
U=(1/2)*k*x^2//Potential energy of the block in J
v=x*sqrt(k/m)//Velocity of the block in m/s

//Output
printf('Potential energy of the block when spring is in stretched position is %3.3f J \n Velocity of the block when it passes through the equilibrium position is %3.2f m/s',U,v)
