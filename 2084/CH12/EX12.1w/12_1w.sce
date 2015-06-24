//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 12.1w
//calculation of the amplitude,time period,maximum speed and velocity at time t

//given data
//x = (5 m)*sind((%pi s^-1)t + (180/3))......equation of simple harmonic motion

//calculation
A=5//amplitude(in m)
w=%pi
T=(2*%pi)/w//time period(in s)
vmax=A*w//maximum speed
v=A*w*cosd(180+(180/3))

printf('the amplitude is %d m',A)
printf('\nthe time period is %d s',T)
printf('\nthe maximum speed is %3.2f m/s',vmax)
printf('\nthe velocity at time t=1 s is %3.2f m/s',v)

