//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 17.1
//calculation of the speed of light in glass

//given data
mu=1.5//refractive index of glass
v0=3*10^8//speed(in m/s) of light in vacuum

//calculation
v=v0/mu//definition of the refractive index

printf('the speed of light in glass is %3.1e m/s',v)
