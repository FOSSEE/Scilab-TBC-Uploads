//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 10.3w
//calculation of the torque required to stop the wheel in one minute

//given data
wzero=50*(2*%pi/60)//initial angular velocity(in rad/s) of the wheel
w=0//final angular velocity(in rad/s) of the wheel
t=60//time(in s) taken to stop the wheel
I=2//moment of inertia(in kg-m^2) of the wheel

//calculation
alpha=(w-wzero)/t//equation of angular motion
tau=I*abs(alpha)//torque

printf('the torque required to stop the wheel in one minute is %3.2f N-m',tau)
