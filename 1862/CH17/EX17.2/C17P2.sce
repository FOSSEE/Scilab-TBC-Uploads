clear
clc
//to find total energy stored in the system
//to find maximum speed and magnitude of maximum acceleration of block
//to find position,velocity and acceleration of block at t = 0.215s

// GIVEN:
//refer to problem 17-1
//mass of boby
M = 1.65//in Kg
//increase in length
y = 7.33//in cm
//mass of block
m = 2.43//in Kg
//distance by which spring is streched
x_m = 11.6//in cm
//time 
t = 0.215//seconds
//acceleration due to gravity
g = 9.81//in m/s^2

// SOLUTION:
//applying simple harmonic motion equation  
//equating forces in y direction
//force constant k of spring
k = (-M*g)/(-y*10^-2)//in N/m //taking y in meters
//total energy stored in the system
E = (1/2)*k*((x_m*10^-2)^2)//in J
//magnitude of kinetic energy 
K_max = E//in J
//maximum speed of block
v_max = sqrt((2*K_max)/m)//in m/s
//maximum acceleration of block
a_max = (k*(x_m*10^-2))/m//in m/s^2
//period of oscillation
T = (2*%pi*(sqrt(m/k)))*10^3//in miliseconds
//angular frequency
omega = (2*%pi)/(T*10^-3)//in rad/s
z = omega*t
//position of block at t = 0.215s
x = (x_m*10^-2)*(cos(z))//in m
//velocity of block at t = 0.215s
vx = -(omega*(x_m*10^-2))*(sin(z))//in m/s
//acceleration of block at t = 0.215s
ax = -(omega^2)*x//in m/s^2
omega = nearfloat("succ",9.536)
a_max = nearfloat("succ",10.6)
x = nearfloat("succ",-0.0535)
ax = nearfloat("succ",4.87)

printf ("\n\n Total energy stored in the system E = \n\n %.2f J",E)
printf ("\n\n Maximum speed of block v_max = \n\n %.2f m/s",v_max)
printf ("\n\n Maximum acceleration of block a_max = \n\n %.1f m/s^2",a_max)
printf ("\n\n Angular frequency omega = \n\n %.3f rad/s",omega)
printf ("\n\n Position of block at t = 0.215s x = \n\n %.4f m",x)
printf ("\n\n Velocity of block at t = 0.215s vx = \n\n %.3f m/s",vx)
printf ("\n\n acceleration of block at t = 0.215s ax = \n\n %.2f m/s^2",ax)
