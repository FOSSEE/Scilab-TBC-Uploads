//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 12.10
//calculation of the value of torsional constant of the wire

//given data
m=200*10^-3//mass(in kg) of the disc
r=5*10^-2//radius(in m) of the disc
T=0.2//time period(in s) of oscillation

//calculation
I=m*r*r/2//moment of inertia of the disc about the wire
k=4*%pi^2*I/T^2//from formula of time period......T = 2*%pi*sqrt(I/k)

printf('the value of torsional constant of the wire is %3.2f kg-m^2/s^2',k)
