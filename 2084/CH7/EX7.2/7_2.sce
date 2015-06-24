//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 7.2
//calculation of the angular acceleration

//given data
v1=5//initial speed(in m/s)
v2=6//final speed(in m/s)
dt=2//change in time(in s)
r=20*10^-2//radius(in cm) of the circle

//calculation
at=(v2-v1)/dt//formula of tangential acceleration
alpha=at/r//formula of angular acceleration

printf('the angular accleration is %3.1f rad/s^2',alpha)
