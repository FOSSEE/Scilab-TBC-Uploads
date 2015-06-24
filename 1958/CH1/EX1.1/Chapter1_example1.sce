clc
clear
//Input data
d=180//Distance of satellite above the surface of earth in km
t=90//Time taken to complete one revolution of the earth in minutes
r=6400//Radius of the earth in kms

//Calculations
R=(r+d)*1000//Total distance in m
T=t*60//Time in seconds
v=(2*3.14*R)/T//Orbital speed in m/s
a=(v^2/R)//Centripetal acceleration in m/s^2

//Output
printf('Orbital speed is %i m/s \n Centripetal acceleration is %3.1f m/s^2',v,a)
