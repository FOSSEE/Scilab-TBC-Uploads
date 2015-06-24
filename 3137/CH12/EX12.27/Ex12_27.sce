//Initilization of variables
w0=0 //rad/s
w=209 //rad/s
t=20 //s
//Calculations
theta=0.5*(w+w0)*t //rad
theta_rev=round(theta/(2*%pi)) //revolutions rounding off
//Result
clc
printf('The flywheel makes %i revolutions',theta_rev)
