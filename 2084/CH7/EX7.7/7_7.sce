//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 7.7
//calculation of the weight of the body if spring balance is shifted to the equator

//given data
W=98//weight(in N) of the body at north pole
R=6400*10^3//radius(in m) of the earth
g=9.8//gravitational acceleration(in m/s^2) of the earth

//calculation
m=W/g//formula of weight
w=(2*%pi)/(24*60*60)//angular speed of the earth
We=W-(m*w*w*R)//  since We = W - (m*w*w*R)

printf('the weight of the body if spring balance is shifted to the equator is %3.2f N',We)
