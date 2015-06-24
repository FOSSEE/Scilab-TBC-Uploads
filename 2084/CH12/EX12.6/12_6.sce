//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 12.6
//writing the equation giving angular displacement as a function of time

//given data
theta0=%pi/10//amplitude(in rad) of motion
theta=%pi/10//displacement(in rad) at t=0 s
T=.05//time period(in s)

//calculation
//required equation is ......theta = theta0*sind((w*t) + delta)
w=(2*%pi)/T//value of w in above equation
delta=asind(theta/theta0)//value of delta in above equation...i.e at t=0

printf('equation giving angular displacement as a function of time is \n  theta = (%3.2f rad)*sin[(%3.2f s^-1)t + %d]',theta0,w,delta)
