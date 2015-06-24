//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 12.5
//calculation of the total mechanical energy of the system

//given data
m=40*10^-3//mass(in kg) of the particle
A=2*10^-2//amplitude(in cm) of motion
T=0.2//time period(in s) of oscillation

//calculation
E=(2*%pi*%pi*m*A*A)/(T*T)//total mechanical energy of the system

printf('the total mechanical energy of the system is %3.1e J',E)
