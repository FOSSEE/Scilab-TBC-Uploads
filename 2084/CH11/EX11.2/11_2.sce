//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 11.2
//calculation of the work done in bringing three particles together

//given data
m1=100*10^-3//masss(in kg) of particle1
r=20*10^-2//separation(in m) between the two particles
G=6.67*10^-11//universal constant of gravitation(in N-m^2/kg^2)

//calculation
//since the work done by the gravitational force is equal to change in the potential energy
U=3*(-G*m1*m1/r)

printf('the work done in bringing three particles is %3.1e J',U)
