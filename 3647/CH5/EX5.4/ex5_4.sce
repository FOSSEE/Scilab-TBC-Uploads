//Solutions to Problems In applied mechanics
//A N Gobby
clear all;
clc
//initialisation of variables
d=60//rev/min
s=5//in
v=5//in/s
a=25.2//in/s
x=2.23//in
b=4.59//in
z=20.0//in
//CALCULATIONS
U=x*v//in/s
V=b*v//in/s
B=V/z//rad/s
//RESULTS
printf('the angular velocity=% f rad/s',B)
