//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 11.9
//calculation of the speed and time period of the satellite 

//given data
h=600*10^3//height(in m) of the satellite
M=6*10^24//mass(in kg) of the earth
R=6400*10^3//radius(in m) of the earth
G=6.67*10^-11//universal constant of gravitation(in N-m^2/kg^2)

//calculation
a=h+R//distance of satellite from centre of the earth
v=sqrt(G*M/a)//speed of satellite
T=(2*%pi*a)/v//time period of satellite

printf('the speed of the satellite is %3.1e m/s or %3.1f km/s',v,v*10^-3)
printf('\nthe time period of the satellite is %3.1e s',T)
