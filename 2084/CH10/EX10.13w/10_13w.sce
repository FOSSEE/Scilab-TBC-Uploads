//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 10.13w
//calculation of the kinetic energy and angular momentum of the disc

//given data
M=200*10^-3//mass(in kg) of the disc
r=4*10^-2//radius(in m) of the disc
w=10//angular velocity(in rad/s) 

//calculation
I=(M*r*r)/4//moment of inertia
K=(I*w*w/2)//kinetic energy
L=I*w//angular momentum

printf('the kinetic energy of the disc is %3.1e J',K)
printf('\nthe angular momentum of the disc is %3.1e J-s',L)

