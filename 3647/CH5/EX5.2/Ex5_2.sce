//Solutions to Problems In applied mechanics
//A N Gobby
clear all;

clc
//initialisation of variables
a=13.25//in
q=4.5//in
b=9//in
r=2.5//in
w=6//in
s=2.4//in
x=8*3/4//in
y=4*3/8//in
z=5*3/4//in
R=0.81//ft/s
p=5.0//in
//CALCULATIONS
V=(2*%pi)*r//in/s
AB=(p/a)//rad/s
DE=s/b//rad/s
//RESULTS
printf('The angular velocity is=% f rad/s',AB)
printf('the angular velocity=% f rad/s',DE)
