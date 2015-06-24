//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 11.9w
//calculation of the maximum height attained by the particle

//given data
v0=9.8*10^3//speed(in m/s) the particle is fired
R=6400*10^3//radius(in m) of the earth
g=9.8//gravitational acceleration(in m/s^2) of the earth

//calculation
//by the principle of conservation of energy
//(-G*M*m/R) + (m*v0*v0/2) = -(G*M*m/(R+H))
H=(R*R/(R-(v0*v0/(2*g))))-R

printf('the maximum height attained by the particle is %d km',H*10^-3)
