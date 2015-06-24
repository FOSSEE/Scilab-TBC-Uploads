//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 12.3w
//calculation of the maximum time period,maximum speed,maximum acceleration,speed for a given displacement,speed at a given time

//given data
w=6.28//angular frequency(in s^-1) of simple harmonic motion
A=10*10^-2//amplitude(in m) of simple harmonic motion
x=6*10^-2//displacement(in m) from the mean position
t=1/6//time(in s)

//calculation
T=2*%pi/w//time period
vmax=A*w//maximum speed
amax=A*w^2//maximum acceleration
vx=w*sqrt(A^2-x^2)//speed for displacement x from mean position
vt=-A*w*sind((w*t)*(180/%pi))//speed at time t

printf('the time period is %d s',T)
printf('\nthe maximum speed is %3.3f m/s',vmax)
printf('\nthe maximum acceleration is %d m/s^2',round(amax))
printf('\nthe speed for displacement x=6 cm from mean position is %3.1f cm/s',vx*10^2)
printf('\nthe speed at time t= 1/6 s is %3.1f cm/s',vt*10^2)
