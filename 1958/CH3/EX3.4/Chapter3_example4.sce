clc
clear
//Input data
l=0.8//Length of a simple pendulum in m
q=30//Angle with the vertical through which the bob is released in degrees
q1=10//Required angle in degrees

//Calculations
v=sqrt(2*9.8*l*(cosd(q1)-cosd(q)))//Speed in m/s

//Output
printf('Speed when the bob is at the angle of %i degrees with the vertical is %3.2f m/s',q1,v)
