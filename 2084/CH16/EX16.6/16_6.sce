//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 16.6
//calculation of the distance of the piston from the open end,for tube to vibrate in its first overtone 

//given data
nu=416//frequency(in Hz) of the tunning fork
v=333//speed(in m/s) of the sound in air

//calculation
lambda=v/nu//wavelength
L=3*lambda/4//length of the tube

printf('the distance of the piston from the open end,for tube to vibrate in its first overtone is %3.1f cm',L*10^2)
