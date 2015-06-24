clc
clear
//Input data
m=0.5//Mass of the sphere in kg
vi=100//Initial velocity in m/s
vf=20//Final velocity in m/s

//Calculations
h=(vi^2-vf^2)/(2*9.8)//Height in m
PE=(m*9.8*h)//Potential energy in J

//Calculations
printf('Potential energy of the sphere is %i J',PE)
