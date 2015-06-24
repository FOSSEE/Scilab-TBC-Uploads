//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 12.14w
//calculation of the time period,linear amplitudde,speed and angular acceleration

//given data
l=40*10^-2//length(in m) of the pendulum
theta=.04//angular amplitude(in radian)
theta1=.02//angle(in radian) with the vertical
g=10//gravitational acceleration(in m/s^2) of the earth
t=5//time(in s) taken

//calculation
w=sqrt(g/l)//angular frequency
T=2*%pi/w//time period
A=l*theta//linear amplitude
ohm=t*sqrt(theta^2-theta1^2)//angular speed at disp[lacement theta1
v=l*ohm//linear speed
alpha=theta*w^2//angular acceleration

printf('the time period of the pendululum is %3.2f s',T)
printf('\nthe linear amplitude of the pendulum is %3.1f cm',A*10^2)
printf('\nthe linear speed of the pendulum at displacement of 0.02 rad is %3.1f cm/s',v*10^2)
printf('\nthe angular acceleration of the pendulum is %d rad s^-2',alpha)
