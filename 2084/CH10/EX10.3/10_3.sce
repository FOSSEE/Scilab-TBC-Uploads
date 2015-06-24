//developed in windows XP operating system 32bit
//platform Scilab 5.4.1
clc;clear;
//example 10.3
//calculation of the angular velocity and angular acceleration of the pulley 

//given data
v=20//linear speed(in cm/s) of the bucket
r=10//radius(in cm) of the pulley
a=4*10^2//linear acceleration(in cm/s^2) of the pulley

//calculation
w=v/r//formula of angular velocity
alpha=a/r//formula of angular acceleration

printf('the angular velocity of the pulley is %d rad/s and angular acceleration of the pulley is %d rad/s^2',w,alpha)
