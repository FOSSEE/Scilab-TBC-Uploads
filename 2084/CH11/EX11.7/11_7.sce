//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 11.7
//calculation of the gravitational field due to the moon at its surface

//given data
M=7.36*10^22//mass(in kg) of the moon
G=6.67*10^-11//universal constant of gravitation(in N-m^2/kg^2)
a=1.74*10^6//radius(in m) of the moon

//calculation
E=G*M/(a*a)//formula of gravitational field

printf('the gravitational field due to the moon at its surface is %3.2f N/kg',E)
