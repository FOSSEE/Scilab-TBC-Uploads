//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 12.19w
//calculation of the moment of inertia of the second disc about the wire

//given data
I=0.2//moment of inertia(in kg-m^2) of the original disc
T=2//time period(in s) of the oscillation of the original disc
T1=2.5//time period(in s) of the oscillation of the system of two discs

//calculation
//from equation of time period......T = 2*%pi*sqrt(I/K) 
I1=((T1^2/T^2)*(I))-I//moment of inertia of the second disc

printf('the moment of inertia of the second disc about the wire is %3.2f kg-m^2',I1)
