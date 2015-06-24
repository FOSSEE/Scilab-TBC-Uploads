clear
clc
//to find force constant k of spring
//to find magnitude of horizontal force and period of oscillation

// GIVEN:
//refer to figure 17-5 from page no. 375
//mass of boby
M = 1.65//in Kg
//increase in length
y = 7.33//in cm
//mass of block
m = 2.43//in Kg
//distance by which spring is streched
x = 11.6//in cm
//acceleration due to gravity
g = 9.81//in m/s^2

// SOLUTION:
//applying simple harmonic motion equation  
//equating forces in y direction
//force constant k of spring
k = (-M*g)/(-y*10^-2)//in N/m //taking y in meters
//magnitude of horizontal force
F = k*(x*10^-2)//in N //taking x in meters
//period of oscillation
T = (2*%pi*(sqrt(m/k)))*10^3//in miliseconds
k = round(k)

printf ("\n\n Force constant k of spring k = \n\n %3i N/m",k)
printf ("\n\n Magnitude of horizontal force F = \n\n %.1f N",F)
printf ("\n\n Period of oscillation T = \n\n %3i ms",T)
