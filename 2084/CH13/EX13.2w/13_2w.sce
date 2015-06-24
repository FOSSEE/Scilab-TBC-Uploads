//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 13.2w
//calculation of the height of the atmosphere to exert the same pressure as at the surface of the earth

//given data
P0=1*10^5//atmospheric pressure(in Pa)
rho=1.3//density of air(in kg/m^3)
g=9.8//gravitational acceleration(in m/s^2) of the earth

//calculation
h=P0/(g*rho)

printf('the height of the atmosphere to exert the same pressure as at the surface of the earth is %d m',round(h))
