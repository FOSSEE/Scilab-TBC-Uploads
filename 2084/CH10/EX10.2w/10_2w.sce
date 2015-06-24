//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 10.2w
//calculation of the angle rotated during the next second

//given data
theta=2.5//angular displacement(in rad) of the wheel
t=1//time(in s) required

//calculation
alpha=(theta*2)/(t*t)//equation of angular motion
theta1=(alpha*(t+1)*(t+1)/2)//angle rotated during first two seconds
thetar=theta1-theta//angle rotated during next second

printf('the angle rotated during the next second is %3.1f rad',thetar)
