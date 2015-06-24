clc
//Given that
m = 1 // mass of particle in kg
theta = 30 // latitude position in degree
v = 0.5 // velocity of particle in km/s in north direction


// sample Problem 8  Page No. 180
printf("\n # Problem 8 # \n")
printf("Standard formula used is coriolis Force = 2*mass*angular velocity X velocity ")
f_x = -2*m*2*%pi * v*1000*(-1)*sin(theta*%pi/180)/86400 // coriolis force in east direction
f_z = -2*m*2*%pi * v*1000*cos(theta*%pi/180)/86400 // coriolis force in verticle direction
F = sqrt(f_x^2+f_z^2)
alpha = -atan(f_z/f_x) *180 /%pi
printf(" \n Magnitude and direction  of coriolis force on particle are \n %e N and %d degree with east respectively",F,alpha)

