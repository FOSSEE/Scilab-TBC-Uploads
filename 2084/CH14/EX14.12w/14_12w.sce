//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 14.12w
//calculation of the load W suspended from wire to keep it in equilibrium

//given data
l=10*10^-2//length(in m) of the wire
//1 dyne = 10^-5 N
S=25*10^-5*10^2//suface tension(in N/m) of the soap solution
g=10//gravitational acceleration(in m/s^2) of the earth

//calculation
F=2*l*S//force exerted by the film on the wire
m=F/g//mass of the load

printf('the load W suspended from wire to keep it in equilibrium should be %3.1e N',F)
printf('\nthe mass of the load suspended from wire to keep it in equilibrium should be %3.1e kg or %3.1f g',m,m*10^3)
