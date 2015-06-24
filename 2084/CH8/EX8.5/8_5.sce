//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 8.5
//calculation of the speed of the pendulum of bob when it makes an angle of 60 degree with the vertical

//given data
v0=3//speed(in m/s)of the bob in its lowest position
theta=60//angle(in degree)made by the pendulum with vertical
l=.5//length(in m) of the pendulum
g=10//gravitational acceleration(in m/s^2) of the earth

//calculation
//from the law of conservation of energy
//(m*v0*v0/2) - (m*v1*v1/2) = m*g*l*(1-cosd(theta))
v1=sqrt((v0*v0)-(2*g*l*(1-cosd(theta))))

printf('the speed of the pendulum of bob when it makes an angle of 60 degree with the vertical is %d m/s',v1)
