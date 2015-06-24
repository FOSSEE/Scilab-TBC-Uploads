//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 16.12w
//calculation of the length of the shortest closed organ pipe that will resonate with the tunning fork

//given data
nu=264//frequency(in Hz)of the tunning fork
v=350//speed(in m/s) of the sound in air

//calculation
//from the equation of the resonate frequency of the closed organ pipe....l = (n*v)/(4*nu)
n=1//for l to be minimum
lmin=(v)/(4*nu)//equation of the resonate frequency of the closed organ pipe

printf('the length of the shortest closed organ pipe that will resonate with the tunning fork is %d cm',lmin*10^2)
