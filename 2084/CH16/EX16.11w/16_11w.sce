//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 16.11w
//calculation of the minimum distance between the source and the detector for maximum sound detection

//given data
nu=180//frequency(in Hz)
d=2//distance(in m)
v=360//speed(in m/s) of the sound wave in air

//calculation
//path difference.....delta = (2*((2^2) + (x^2/4))^(1/2)) - (x)
lambda=v/nu//wavelength
delta=lambda
//solving the above equation,we get
x=4-1

printf('the minimum distance between the source and the detector for maximum sound detection is %d m',x)
