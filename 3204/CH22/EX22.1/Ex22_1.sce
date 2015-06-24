// Initilization of variables
N=1500 // r.p.m
r=0.5 // m // radius of the disc
m=300 // N // weight of the disc
t=120 // seconds // time in which the disc comes to rest
omega=0 
g=9.81 // m/s^2
// Calculations
omega_0=(2*%pi*N)/60 // rad/s
// angular deceleration is given as,
alpha=-(omega_0/t) // radian/second^2
theta=(omega_0^2)/(2*(-alpha)) // radian
// Let n be the no of revolutions taken by the disc before it comes to rest, then
n=theta/(2*%pi)
// Now,
I_G=((1/2)*m*r^2)/g
// The frictional torque is given as,
M=I_G*alpha // N-m
// Results
clc
printf('(a) The no of revolutions executed by the disc before coming to rest is %f \n',n)
printf('(b) The frictional torque is %f N-m \n',M)
