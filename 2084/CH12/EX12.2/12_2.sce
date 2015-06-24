//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 12.2
//calculation of the amplitude of the motion

//given data
m=0.5//mass(in kg) of the particle
//F = -50*x ......force(in N/m)
v=10//speed(in m/s) of the oscillation

//calculation
E=(m*v*v/2)//kinetic energy of the particle at centre of oscillation
//from principle of conservation of energy......E = (k*A*A/2)
A=sqrt(E*2/50)

printf('the amplitude of the motion is %d m',A)
