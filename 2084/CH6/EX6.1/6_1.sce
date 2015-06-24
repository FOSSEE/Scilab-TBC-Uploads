//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 6.1
//calculation of the angle made by the contact force with the vertical and the magnitude of contact force

//given data
M=.4//mass(in kg) of the body
f=3//frictional force(in N)
g=10//gravitational acceleration(in m/s^2) of the earth

//calculation
N=M*g//formula of normal force
theta=atand(f/N)//angle made by the contact force with the vertical
F=sqrt((N*N)+(f*f))

printf('the angle made by the contact force with the vertical is %3.2f degree \n the magnitude of contact force is %3.2f N',theta,F)
