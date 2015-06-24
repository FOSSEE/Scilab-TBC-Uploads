//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 11.12w
//calculation of the speed of projection of the satellite into an orbit

//given data
r=8000*10^3//radius(in m) of the orbit of the satellite
R=6400*10^3//radius(in m) of the earth
g=9.8//gravitational acceleration(in m/s^2) of the earth

//calculation
//using Newton's second law
//(G*M*m/(r*r)) = m*v*v/r
v=sqrt(g*R*R/r)
t=(2*%pi*r/v)//time period of the satellite

printf('the speed of projection of the satellite into the orbit is %3.2f km/s',v*10^-3)
printf('\nthe time period of the satellite in the orbit is %d minutes',t*(1/(60)))
