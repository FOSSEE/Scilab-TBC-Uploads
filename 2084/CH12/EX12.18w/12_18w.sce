//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 12.18w
//calculation of the time period of small oscillation about the point of suspension

//given data
l=1//length(in m) of the stick
d=40*10^-2//distance(in m) of the centre from point of suspension
g=10//gravitational acceleration(in m/s^2) of the earth

//calculation
//moment of inertia.....I = (m*l*l/12) + (m*d*d)
//time period...........T=2*%pi*sqrt(I/m*g*d)
//solving the above equations,we get
T=2*%pi*sqrt(((l*l/12)+(d*d))/(g*d))

printf('the time period of small oscillation about the point of suspension is %3.2f s',T)
