//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 10.4w
//calculation of the angular velocity of the wheel

//given data
F=20//force(in N) of pull applied
I=.2//moment of inertia(in kg-m^2)
r=20*10^-2//radius(in m) of the wheel
t=5//time(in s) interval
wzero=0//initial angular velocity(in rad/s) of the wheel 

//calculation
tau=F*r//torque applied to the wheel
alpha=tau/I//angular acceleration
w=wzero+(alpha*t)//equation of angular motion

printf('the angular velocity of the wheel after 5 s is %d rad/s',w)
