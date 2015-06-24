//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 10.1w
//calculation of the number of revolutions made by the wheel 

//given data
wzero=0//initial angular velocity(in rad/s) of the wheel 
alpha=2//angular acceleration(in rad/s^2)
t=10//time(in s) interval

//calculation
theta=(wzero*t)+(alpha*t*t/2)//equation of angular motion
n=round(theta/(2*%pi))//number of revolutions

printf('the number of revolutions made by the wheel is %d',n)
