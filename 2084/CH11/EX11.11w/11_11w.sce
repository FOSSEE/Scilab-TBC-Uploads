//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 11.11w
//calculation of time period of the pendulum if used at the equator

//given data
t=2//time period (in s) of the pendulum at North pole
g=9.8//gravitational acceleration(in m/s^2) of the earth
G=6.67*10^-11//universal constant of gravitation(in N-m^2/kg^2)
w=(2*%pi)/(24*60*60)//angular velocity(in rad/s) of the earth
R=6400*10^3//radius(in m) of the earth

//calculation
//By equilibrium conditions,we get
//t = 2*%pi*sqrt(l/g)..............................(1)
//tdash = 2*%pi*sqrt(l/(g-(w*w*R)).................(2)
//from equations (1) and (2),we get
tdash=t*(1+(w*w*R/(2*g)))

printf('the value of time period of the pendulum if used at the equator is %3.4f s',tdash)
