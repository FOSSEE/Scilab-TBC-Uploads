clc;
disp("Example 8.9")
number=5
speed= 1 // in rotations per second
density= 1000 // in kg/m^3
d=0.6 // in m
power=number*speed*speed*speed*density*(d^5)
disp(power,"Power to the mixing system is ")
