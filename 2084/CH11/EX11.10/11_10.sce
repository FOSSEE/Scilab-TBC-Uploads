//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 11.10
//calculation of the escape velocity from the moon

//given data
M=7.4*10^22//mass(in kg) of the moon
R=1740*10^3//radius(in m) of the moon
G=6.67*10^-11//universal constant of gravitation(in N-m^2/kg^2)

//calculation
v=sqrt(2*G*M/R)//formula of the escape velocity

printf('the escape velocity from the moon is %3.1f km/s',v*10^-3)
