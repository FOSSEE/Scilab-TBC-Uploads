//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 10.1
//calculation of the number of revolutions made

//given data
wzero=100*2*%pi/60//initial angular velocity(in rad/s) of the motor
w=0//final angular velocity(in rad/s) of the motor
t=15//time interval(in s)

//calculation
alpha=(w-wzero)/t//equation of angular motion
theta=(wzero*t)+(alpha*t*t/2)//equation of angular motion

printf('the number of revolutions the motor makes before coming to rest is %3.1f',theta/(2*%pi))
