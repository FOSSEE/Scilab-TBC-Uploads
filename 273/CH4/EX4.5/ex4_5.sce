clc;clear;
//Example 4.5
//motion of an electron in a uniform magnetic field acting at an angle
//given values
v=3*10^7;//electron speed
B=.23;//magnetic field in wb/m^2
q=45*%pi/180;//in degrees,angle in which electron enter field
e=1.6*10^-19;//in C
m=9.1*10^-31;//in kg
R=m*v*sin(q)/(e*B);//in m
disp(R,'radius of helical path is:')
p=2*%pi*m*v*cos(q)/(e*B);//in m
disp(p,'pitch of helical path(in m) is:')