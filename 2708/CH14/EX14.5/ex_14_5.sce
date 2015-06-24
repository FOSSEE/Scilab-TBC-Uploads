//Example 14.5 // wavelength & speed of neutron
clc;
clear;
//given data :
n=1;// given first reflection
d=3.84;//spacing between successive planes in A
m=1.67D-27;// mass of neutron in kg
theta=30;//in degree
theta=theta*%pi/180;// to convert in radian
lamda=2*d*sin(theta) /n;//de-broglie equation
disp(lamda,"wavelength of neutron in A ")
h=6.626D-34;// plank's constant in joules-sec
lamda=lamda*1D-10;// to convert in m
v=h/(m*lamda);// e-Broglie relation
disp(v,"speed of neutron in m/s")
// in book it is wrongly calculated
