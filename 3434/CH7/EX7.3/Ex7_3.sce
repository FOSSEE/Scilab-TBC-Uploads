// Given Data
// given data
clear();
clc();
u0=15.0 // wind speed in m/s
R=80/2.0 // radius of rotor in m
n=3 // number of blades

Lambda=4*%pi/n // condition of tip ratio for maximum output

w=Lambda*u0/R // using Eq 7.21 rotor speed in rad/s

N=w*60/(2*%pi) // rotor speed in RPM

printf( "For optimum energy the rotor speed should be %.1f rpm",N)
