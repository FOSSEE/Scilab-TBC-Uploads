//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 3.6
//calculation of displacement of particle in last 1 second

//given data
u=5; //initial velocity(in m/s) of the particle
a=2; //constant acceleration(in m/s^2) of the particle
t=10; //time(in s)

//calculation
//s = u*t+((1/2)*a*t^2)....equation of motion
//sdash = u*(t-1)+((1/2)*a*(t-1)^2)
//st = s-sdash =u+((a/2)*(2*t-1)); 

st=u+((a/2)*(2*t-1)); //formula of displacement in last one second
disp(st,'displacement(in m) of particle in last 1 second');
